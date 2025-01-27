.class abstract Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.super Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_BUFF:",
        "Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<",
        "TT_CONS;>;T_SP",
        "LITR::Ljava9/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
        "TT;TT_SP",
        "LITR;",
        ">;",
        "Ljava9/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/Spliterator$OfPrimitive;JJ)V
    .locals 0
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .line 1075
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "s":Ljava9/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct/range {p0 .. p5}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava9/util/Spliterator;JJ)V

    .line 1076
    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator$OfPrimitive;Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<",
            "TT;TT_CONS;TT_BUFF;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 1079
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "s":Ljava9/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .local p2, "parent":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava9/util/Spliterator;Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    .line 1080
    return-void
.end method


# virtual methods
.method protected abstract acceptConsumed(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation
.end method

.method protected abstract bufferCreate(I)Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_BUFF;"
        }
    .end annotation
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 1103
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const/4 v0, 0x0

    .line 1107
    .local v0, "sb":Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;, "TT_BUFF;"
    :goto_0
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->permitStatus()Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    move-object v2, v1

    .local v2, "permitStatus":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    sget-object v3, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v1, v3, :cond_5

    .line 1108
    sget-object v1, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-ne v2, v1, :cond_4

    .line 1110
    if-nez v0, :cond_0

    .line 1111
    iget v1, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->chunkSize:I

    invoke-virtual {p0, v1}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->bufferCreate(I)Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;

    move-result-object v0

    goto :goto_1

    .line 1113
    :cond_0
    invoke-virtual {v0}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->reset()V

    .line 1115
    :goto_1
    move-object v1, v0

    .line 1116
    .local v1, "sbc":Ljava/lang/Object;, "TT_CONS;"
    const-wide/16 v3, 0x0

    .line 1117
    .local v3, "permitsRequested":J
    :cond_1
    iget-object v5, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Ljava9/util/Spliterator;

    check-cast v5, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v5, v1}, Ljava9/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    move-wide v3, v5

    iget v7, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->chunkSize:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 1118
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    .line 1119
    return-void

    .line 1120
    :cond_3
    invoke-virtual {p0, v3, v4}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acquirePermits(J)J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->forEach(Ljava/lang/Object;J)V

    .line 1121
    .end local v1    # "sbc":Ljava/lang/Object;, "TT_CONS;"
    .end local v3    # "permitsRequested":J
    goto :goto_0

    .line 1124
    :cond_4
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Ljava9/util/Spliterator;

    check-cast v1, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p1}, Ljava9/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 1125
    return-void

    .line 1128
    :cond_5
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 1084
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    move-object v0, p0

    .line 1088
    .local v0, "consumer":Ljava/lang/Object;, "TT_CONS;"
    :cond_0
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->permitStatus()Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    sget-object v2, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 1089
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->s:Ljava9/util/Spliterator;

    check-cast v1, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v1, v0}, Ljava9/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1090
    return v3

    .line 1091
    :cond_1
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acquirePermits(J)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    .line 1092
    invoke-virtual {p0, p1}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acceptConsumed(Ljava/lang/Object;)V

    .line 1093
    const/4 v1, 0x1

    return v1

    .line 1096
    :cond_2
    return v3
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1067
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    invoke-super {p0}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    return-object v0
.end method
