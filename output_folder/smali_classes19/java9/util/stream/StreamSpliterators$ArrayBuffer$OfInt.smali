.class final Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfInt;
.super Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<",
        "Ljava9/util/function/IntConsumer;",
        ">;",
        "Ljava9/util/function/IntConsumer;"
    }
.end annotation


# instance fields
.field final array:[I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 1493
    invoke-direct {p0}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    .line 1494
    new-array v0, p1, [I

    iput-object v0, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    .line 1495
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "t"    # I

    .line 1499
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    iget v1, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->index:I

    aput p1, v0, v1

    .line 1500
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;J)V
    .locals 0

    .line 1489
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->forEach(Ljava9/util/function/IntConsumer;J)V

    return-void
.end method

.method public forEach(Ljava9/util/function/IntConsumer;J)V
    .locals 3
    .param p1, "action"    # Ljava9/util/function/IntConsumer;
    .param p2, "fence"    # J

    .line 1504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-gez v1, :cond_0

    .line 1505
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 1504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1507
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
