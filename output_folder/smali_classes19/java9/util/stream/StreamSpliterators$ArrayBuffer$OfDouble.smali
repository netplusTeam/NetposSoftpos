.class final Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;
.super Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<",
        "Ljava9/util/function/DoubleConsumer;",
        ">;",
        "Ljava9/util/function/DoubleConsumer;"
    }
.end annotation


# instance fields
.field final array:[D


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 1535
    invoke-direct {p0}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    .line 1536
    new-array v0, p1, [D

    iput-object v0, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    .line 1537
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    .line 1541
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    iget v1, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->index:I

    aput-wide p1, v0, v1

    .line 1542
    return-void
.end method

.method bridge synthetic forEach(Ljava/lang/Object;J)V
    .locals 0

    .line 1531
    check-cast p1, Ljava9/util/function/DoubleConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->forEach(Ljava9/util/function/DoubleConsumer;J)V

    return-void
.end method

.method forEach(Ljava9/util/function/DoubleConsumer;J)V
    .locals 3
    .param p1, "action"    # Ljava9/util/function/DoubleConsumer;
    .param p2, "fence"    # J

    .line 1546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-gez v1, :cond_0

    .line 1547
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava9/util/function/DoubleConsumer;->accept(D)V

    .line 1546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1549
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
