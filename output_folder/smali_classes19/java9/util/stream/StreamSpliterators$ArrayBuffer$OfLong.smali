.class final Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfLong;
.super Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<",
        "Ljava9/util/function/LongConsumer;",
        ">;",
        "Ljava9/util/function/LongConsumer;"
    }
.end annotation


# instance fields
.field final array:[J


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 1514
    invoke-direct {p0}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    .line 1515
    new-array v0, p1, [J

    iput-object v0, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->array:[J

    .line 1516
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .line 1520
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->array:[J

    iget v1, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->index:I

    aput-wide p1, v0, v1

    .line 1521
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;J)V
    .locals 0

    .line 1510
    check-cast p1, Ljava9/util/function/LongConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->forEach(Ljava9/util/function/LongConsumer;J)V

    return-void
.end method

.method public forEach(Ljava9/util/function/LongConsumer;J)V
    .locals 3
    .param p1, "action"    # Ljava9/util/function/LongConsumer;
    .param p2, "fence"    # J

    .line 1525
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-gez v1, :cond_0

    .line 1526
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->array:[J

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava9/util/function/LongConsumer;->accept(J)V

    .line 1525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1528
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
