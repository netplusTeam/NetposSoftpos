.class abstract Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava9/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/SpinedBuffer$OfPrimitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_SP",
        "LITR::Ljava9/util/Spliterator$OfPrimitive<",
        "TE;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator$OfPrimitive<",
        "TE;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# instance fields
.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;


# direct methods
.method constructor <init>(Ljava9/util/stream/SpinedBuffer$OfPrimitive;IIII)V
    .locals 1
    .param p1, "this$0"    # Ljava9/util/stream/SpinedBuffer$OfPrimitive;
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .line 619
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    iput-object p1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput p2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 621
    iput p3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    .line 622
    iput p4, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 623
    iput p5, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    .line 625
    iget-object v0, p1, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p1, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, p2

    :goto_0
    iput-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 626
    return-void
.end method


# virtual methods
.method abstract arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;ITT_CONS;)V"
        }
    .end annotation
.end method

.method abstract arraySpliterator(Ljava/lang/Object;II)Ljava9/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;II)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public characteristics()I
    .locals 1

    .line 647
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 637
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-wide v0, v0, v1

    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v2, v2, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    :goto_0
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 671
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_3

    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v0, v1, :cond_3

    .line 675
    :cond_0
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 677
    .local v0, "i":I
    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .local v1, "sp":I
    :goto_0
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v1, v2, :cond_1

    .line 678
    iget-object v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v2, v2, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 679
    .local v2, "chunk":Ljava/lang/Object;, "TT_ARR;"
    iget-object v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    invoke-virtual {v3, v2}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, p1}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 680
    const/4 v0, 0x0

    .line 677
    .end local v2    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    .end local v1    # "sp":I
    :cond_1
    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v1, v1, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-object v1, v1, v2

    .line 684
    .local v1, "chunk":Ljava/lang/Object;, "TT_ARR;"
    :goto_1
    iget-object v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    iget v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    invoke-virtual {v2, v1, v0, v3, p1}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 686
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 687
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iput v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 689
    .end local v0    # "i":I
    .end local v1    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    :cond_3
    return-void
.end method

.method abstract newSpliterator(IIII)Ljava9/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 652
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    return v2

    .line 656
    :cond_1
    :goto_0
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    invoke-virtual {p0, v0, v1, p1}, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 658
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 659
    iput v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 660
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 661
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-gt v0, v1, :cond_2

    .line 662
    iget-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 664
    :cond_2
    return v3
.end method

.method public trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 693
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v0, v1, :cond_0

    .line 695
    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v3, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, v3, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v5, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    .line 696
    invoke-virtual {v3, v4}, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    .line 695
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->newSpliterator(IIII)Ljava9/util/Spliterator$OfPrimitive;

    move-result-object v0

    .line 698
    .local v0, "ret":Ljava9/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 699
    const/4 v1, 0x0

    iput v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 700
    iget-object v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava9/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v1, v1, Ljava9/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 701
    return-object v0

    .line 703
    .end local v0    # "ret":Ljava9/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 704
    iget v0, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iget v1, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 705
    .local v0, "t":I
    if-nez v0, :cond_1

    .line 706
    return-object v2

    .line 708
    :cond_1
    iget-object v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1, v0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arraySpliterator(Ljava/lang/Object;II)Ljava9/util/Spliterator$OfPrimitive;

    move-result-object v1

    .line 709
    .local v1, "ret":Ljava9/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    iget v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 710
    return-object v1

    .line 714
    .end local v0    # "t":I
    .end local v1    # "ret":Ljava9/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    :cond_2
    return-object v2
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 596
    .local p0, "this":Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava9/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava9/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava9/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method
