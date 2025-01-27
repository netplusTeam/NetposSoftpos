.class final Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfLong;
.super Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava9/util/Spliterator$OfLong;",
        "Ljava9/util/function/LongConsumer;",
        ">;",
        "Ljava9/util/Spliterator$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/Spliterator$OfLong;JJ)V
    .locals 0
    .param p1, "s"    # Ljava9/util/Spliterator$OfLong;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J

    .line 848
    invoke-direct/range {p0 .. p5}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava9/util/Spliterator$OfPrimitive;JJ)V

    .line 849
    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator$OfLong;JJJJ)V
    .locals 0
    .param p1, "s"    # Ljava9/util/Spliterator$OfLong;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    .line 853
    invoke-direct/range {p0 .. p9}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava9/util/Spliterator$OfPrimitive;JJJJ)V

    .line 854
    return-void
.end method

.method static synthetic lambda$emptyConsumer$68(J)V
    .locals 0
    .param p0, "e"    # J

    .line 865
    return-void
.end method


# virtual methods
.method protected bridge synthetic emptyConsumer()Ljava/lang/Object;
    .locals 1

    .line 845
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfLong;->emptyConsumer()Ljava9/util/function/LongConsumer;

    move-result-object v0

    return-object v0
.end method

.method protected emptyConsumer()Ljava9/util/function/LongConsumer;
    .locals 1

    .line 865
    new-instance v0, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfLong$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfLong$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public bridge synthetic forEachRemaining(Ljava9/util/function/LongConsumer;)V
    .locals 0

    .line 845
    invoke-super {p0, p1}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Ljava9/util/Spliterator$OfLong;JJJJ)Ljava9/util/Spliterator$OfLong;
    .locals 11
    .param p1, "s"    # Ljava9/util/Spliterator$OfLong;
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J

    .line 860
    new-instance v10, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava9/util/Spliterator$OfLong;JJJJ)V

    return-object v10
.end method

.method protected bridge synthetic makeSpliterator(Ljava9/util/Spliterator;JJJJ)Ljava9/util/Spliterator;
    .locals 10

    .line 845
    move-object v1, p1

    check-cast v1, Ljava9/util/Spliterator$OfLong;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfLong;->makeSpliterator(Ljava9/util/Spliterator$OfLong;JJJJ)Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava9/util/function/LongConsumer;)Z
    .locals 0

    .line 845
    invoke-super {p0, p1}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfLong;
    .locals 1

    .line 845
    invoke-super {p0}, Ljava9/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfLong;

    return-object v0
.end method
