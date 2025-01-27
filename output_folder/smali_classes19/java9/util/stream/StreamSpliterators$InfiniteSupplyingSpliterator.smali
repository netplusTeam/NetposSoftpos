.class abstract Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InfiniteSupplyingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;,
        Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;,
        Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;,
        Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field estimate:J


# direct methods
.method protected constructor <init>(J)V
    .locals 0
    .param p1, "estimate"    # J

    .line 1335
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;, "Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1336
    iput-wide p1, p0, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    .line 1337
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1346
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;, "Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>;"
    const/16 v0, 0x400

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1341
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;, "Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>;"
    iget-wide v0, p0, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    return-wide v0
.end method
