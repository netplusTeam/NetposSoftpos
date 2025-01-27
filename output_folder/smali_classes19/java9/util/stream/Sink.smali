.class interface abstract Ljava9/util/stream/Sink;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava9/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/Sink$ChainedDouble;,
        Ljava9/util/stream/Sink$ChainedLong;,
        Ljava9/util/stream/Sink$ChainedInt;,
        Ljava9/util/stream/Sink$ChainedReference;,
        Ljava9/util/stream/Sink$OfDouble;,
        Ljava9/util/stream/Sink$OfLong;,
        Ljava9/util/stream/Sink$OfInt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public accept(D)V
    .locals 2
    .param p1, "value"    # D

    .line 181
    .local p0, "this":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public accept(I)V
    .locals 2
    .param p1, "value"    # I

    .line 159
    .local p0, "this":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public accept(J)V
    .locals 2
    .param p1, "value"    # J

    .line 170
    .local p0, "this":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public begin(J)V
    .locals 0
    .param p1, "size"    # J

    .line 128
    .local p0, "this":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TT;>;"
    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 148
    .local p0, "this":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public end()V
    .locals 0

    .line 138
    .local p0, "this":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<TT;>;"
    return-void
.end method
