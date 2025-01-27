.class Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
.super Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava9/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator<",
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
.method constructor <init>(Ljava9/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 566
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TT_SPLITR;>;"
    invoke-direct {p0, p1}, Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator;-><init>(Ljava9/util/function/Supplier;)V

    .line 567
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 576
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->get()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 577
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 571
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-virtual {p0}, Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;->get()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava9/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 562
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;, "Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive<TT;TT_CONS;TT_SPLITR;>;"
    invoke-super {p0}, Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava9/util/Spliterator$OfPrimitive;

    return-object v0
.end method
