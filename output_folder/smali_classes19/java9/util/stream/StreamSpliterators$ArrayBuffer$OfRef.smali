.class final Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;
.super Ljava9/util/stream/StreamSpliterators$ArrayBuffer;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava9/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/StreamSpliterators$ArrayBuffer;",
        "Ljava9/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 1460
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    invoke-direct {p0}, Ljava9/util/stream/StreamSpliterators$ArrayBuffer;-><init>()V

    .line 1461
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    .line 1462
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1466
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->index:I

    aput-object p1, v0, v1

    .line 1467
    return-void
.end method

.method public forEach(Ljava9/util/function/Consumer;J)V
    .locals 3
    .param p2, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 1470
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-gez v1, :cond_0

    .line 1472
    iget-object v1, p0, Ljava9/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1473
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1470
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1475
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
