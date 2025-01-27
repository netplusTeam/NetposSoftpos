.class final Lio/netty/handler/codec/ByteToMessageDecoder$2;
.super Ljava/lang/Object;
.source "ByteToMessageDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/ByteToMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cumulate(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "cumulation"    # Lio/netty/buffer/ByteBuf;
    .param p3, "in"    # Lio/netty/buffer/ByteBuf;

    .line 118
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 120
    return-object p3

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 124
    .local v0, "composite":Lio/netty/buffer/CompositeByteBuf;
    :try_start_0
    instance-of v1, p2, Lio/netty/buffer/CompositeByteBuf;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 125
    move-object v1, p2

    check-cast v1, Lio/netty/buffer/CompositeByteBuf;

    move-object v0, v1

    .line 128
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v1

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 129
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/CompositeByteBuf;->capacity(I)Lio/netty/buffer/CompositeByteBuf;

    goto :goto_0

    .line 132
    :cond_1
    const v1, 0x7fffffff

    invoke-interface {p1, v1}, Lio/netty/buffer/ByteBufAllocator;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/CompositeByteBuf;->addFlattenedComponents(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v1

    move-object v0, v1

    .line 134
    :cond_2
    :goto_0
    invoke-virtual {v0, v2, p3}, Lio/netty/buffer/CompositeByteBuf;->addFlattenedComponents(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    const/4 p3, 0x0

    .line 136
    nop

    .line 138
    if-eqz p3, :cond_3

    .line 140
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 142
    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    .line 143
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->release()Z

    .line 136
    :cond_3
    return-object v0

    .line 138
    :catchall_0
    move-exception v1

    if-eqz p3, :cond_4

    .line 140
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 142
    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    .line 143
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->release()Z

    .line 146
    :cond_4
    throw v1
.end method
