.class final Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;
.super Ljava/lang/Object;
.source "CompositeByteBuf.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/CompositeByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompositeByteBufIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private final size:I

.field final synthetic this$0:Lio/netty/buffer/CompositeByteBuf;


# direct methods
.method private constructor <init>(Lio/netty/buffer/CompositeByteBuf;)V
    .locals 0

    .line 2234
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;->this$0:Lio/netty/buffer/CompositeByteBuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2235
    invoke-virtual {p1}, Lio/netty/buffer/CompositeByteBuf;->numComponents()I

    move-result p1

    iput p1, p0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;->size:I

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/CompositeByteBuf$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/buffer/CompositeByteBuf;
    .param p2, "x1"    # Lio/netty/buffer/CompositeByteBuf$1;

    .line 2234
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;-><init>(Lio/netty/buffer/CompositeByteBuf;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 2240
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;->size:I

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;->index:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 2245
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;->size:I

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;->this$0:Lio/netty/buffer/CompositeByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf;->numComponents()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2248
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2252
    :try_start_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;->this$0:Lio/netty/buffer/CompositeByteBuf;

    invoke-static {v0}, Lio/netty/buffer/CompositeByteBuf;->access$200(Lio/netty/buffer/CompositeByteBuf;)[Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2253
    :catch_0
    move-exception v0

    .line 2254
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 2249
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 2246
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2234
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;->next()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 2260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-Only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
