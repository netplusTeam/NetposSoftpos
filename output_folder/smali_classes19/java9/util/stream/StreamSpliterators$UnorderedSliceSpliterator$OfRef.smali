.class final Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;
.super Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/Spliterator;
.implements Ljava9/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
        "TT;",
        "Ljava9/util/Spliterator<",
        "TT;>;>;",
        "Ljava9/util/Spliterator<",
        "TT;>;",
        "Ljava9/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field tmpSlot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;JJ)V
    .locals 0
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TT;>;JJ)V"
        }
    .end annotation

    .line 1000
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    invoke-direct/range {p0 .. p5}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava9/util/Spliterator;JJ)V

    .line 1001
    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator;Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TT;>;",
            "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<",
            "TT;>;)V"
        }
    .end annotation

    .line 1004
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    .local p2, "parent":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava9/util/Spliterator;Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    .line 1005
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1009
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    .line 1010
    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1030
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const/4 v0, 0x0

    .line 1034
    .local v0, "sb":Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    :goto_0
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->permitStatus()Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    move-object v2, v1

    .local v2, "permitStatus":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    sget-object v3, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v1, v3, :cond_5

    .line 1035
    sget-object v1, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-ne v2, v1, :cond_4

    .line 1037
    if-nez v0, :cond_0

    .line 1038
    new-instance v1, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;

    iget v3, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->chunkSize:I

    invoke-direct {v1, v3}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;-><init>(I)V

    move-object v0, v1

    goto :goto_1

    .line 1040
    :cond_0
    invoke-virtual {v0}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->reset()V

    .line 1041
    :goto_1
    const-wide/16 v3, 0x0

    .line 1042
    .local v3, "permitsRequested":J
    :cond_1
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljava9/util/Spliterator;

    invoke-interface {v1, v0}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    move-wide v3, v5

    iget v1, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->chunkSize:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-ltz v1, :cond_1

    .line 1043
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 1044
    return-void

    .line 1045
    :cond_3
    invoke-virtual {p0, v3, v4}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->acquirePermits(J)J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->forEach(Ljava9/util/function/Consumer;J)V

    .line 1046
    .end local v3    # "permitsRequested":J
    goto :goto_0

    .line 1049
    :cond_4
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljava9/util/Spliterator;

    invoke-interface {v1, p1}, Ljava9/util/Spliterator;->forEachRemaining(Ljava9/util/function/Consumer;)V

    .line 1050
    return-void

    .line 1053
    :cond_5
    return-void
.end method

.method protected makeSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1057
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    new-instance v0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    invoke-direct {v0, p1, p0}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Ljava9/util/Spliterator;Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V

    return-object v0
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1014
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    :cond_0
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->permitStatus()Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v0

    sget-object v1, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 1017
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljava9/util/Spliterator;

    invoke-interface {v0, p0}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1018
    return v2

    .line 1019
    :cond_1
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->acquirePermits(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 1020
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1021
    const/4 v0, 0x0

    iput-object v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    .line 1022
    const/4 v0, 0x1

    return v0

    .line 1025
    :cond_2
    return v2
.end method
