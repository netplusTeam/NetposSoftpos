.class final Ljava9/util/stream/Streams$StreamBuilderImpl;
.super Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava9/util/stream/Stream$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/Streams$AbstractStreamBuilderImpl<",
        "TT;",
        "Ljava9/util/Spliterator<",
        "TT;>;>;",
        "Ljava9/util/stream/Stream$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field buffer:Ljava9/util/stream/SpinedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/stream/SpinedBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 335
    .local p0, "this":Ljava9/util/stream/Streams$StreamBuilderImpl;, "Ljava9/util/stream/Streams$StreamBuilderImpl<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava9/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 342
    .local p0, "this":Ljava9/util/stream/Streams$StreamBuilderImpl;, "Ljava9/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava9/util/stream/Streams$1;)V

    .line 343
    iput-object p1, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    .line 344
    const/4 v0, -0x2

    iput v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 345
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 351
    .local p0, "this":Ljava9/util/stream/Streams$StreamBuilderImpl;, "Ljava9/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 352
    iput-object p1, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    .line 353
    iget v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    goto :goto_0

    .line 355
    :cond_0
    iget v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 356
    iget-object v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer;

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Ljava9/util/stream/SpinedBuffer;

    invoke-direct {v0}, Ljava9/util/stream/SpinedBuffer;-><init>()V

    iput-object v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer;

    .line 358
    iget-object v1, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava9/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    .line 359
    iget v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 362
    :cond_1
    iget-object v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer;

    invoke-virtual {v0, p1}, Ljava9/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public build()Ljava9/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 371
    .local p0, "this":Ljava9/util/stream/Streams$StreamBuilderImpl;, "Ljava9/util/stream/Streams$StreamBuilderImpl<TT;>;"
    iget v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 372
    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 374
    iget v1, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 377
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    invoke-static {p0, v2}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava9/util/stream/SpinedBuffer;

    invoke-virtual {v1}, Ljava9/util/stream/SpinedBuffer;->spliterator()Ljava9/util/Spliterator;

    move-result-object v1

    invoke-static {v1, v2}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v1

    :goto_0
    return-object v1

    .line 380
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 403
    .local p0, "this":Ljava9/util/stream/Streams$StreamBuilderImpl;, "Ljava9/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 409
    :cond_0
    return-void
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 389
    .local p0, "this":Ljava9/util/stream/Streams$StreamBuilderImpl;, "Ljava9/util/stream/Streams$StreamBuilderImpl<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 393
    const/4 v0, -0x1

    iput v0, p0, Ljava9/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 394
    const/4 v0, 0x1

    return v0

    .line 397
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
