.class final Lio/netty/buffer/UnreleasableByteBuf;
.super Lio/netty/buffer/WrappedByteBuf;
.source "UnreleasableByteBuf.java"


# instance fields
.field private swappedBuf:Lio/netty/buffer/SwappedByteBuf;


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 31
    instance-of v0, p1, Lio/netty/buffer/UnreleasableByteBuf;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lio/netty/buffer/WrappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 32
    return-void
.end method


# virtual methods
.method public asReadOnly()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 49
    iget-object v0, p0, Lio/netty/buffer/UnreleasableByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/buffer/UnreleasableByteBuf;

    iget-object v1, p0, Lio/netty/buffer/UnreleasableByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->asReadOnly()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/buffer/UnreleasableByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    :goto_0
    return-object v0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 93
    new-instance v0, Lio/netty/buffer/UnreleasableByteBuf;

    iget-object v1, p0, Lio/netty/buffer/UnreleasableByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/buffer/UnreleasableByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "endianness"    # Ljava/nio/ByteOrder;

    .line 36
    const-string v0, "endianness"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/UnreleasableByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 37
    return-object p0

    .line 40
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/UnreleasableByteBuf;->swappedBuf:Lio/netty/buffer/SwappedByteBuf;

    .line 41
    .local v0, "swappedBuf":Lio/netty/buffer/SwappedByteBuf;
    if-nez v0, :cond_1

    .line 42
    new-instance v1, Lio/netty/buffer/SwappedByteBuf;

    invoke-direct {v1, p0}, Lio/netty/buffer/SwappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    move-object v0, v1

    iput-object v1, p0, Lio/netty/buffer/UnreleasableByteBuf;->swappedBuf:Lio/netty/buffer/SwappedByteBuf;

    .line 44
    :cond_1
    return-object v0
.end method

.method public readRetainedSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 62
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnreleasableByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "length"    # I

    .line 54
    new-instance v0, Lio/netty/buffer/UnreleasableByteBuf;

    iget-object v1, p0, Lio/netty/buffer/UnreleasableByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/buffer/UnreleasableByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public release()Z
    .locals 1

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public retain()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 111
    return-object p0
.end method

.method public retain(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "increment"    # I

    .line 106
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/buffer/UnreleasableByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnreleasableByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public retainedDuplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lio/netty/buffer/UnreleasableByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lio/netty/buffer/UnreleasableByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 88
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnreleasableByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public slice()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 67
    new-instance v0, Lio/netty/buffer/UnreleasableByteBuf;

    iget-object v1, p0, Lio/netty/buffer/UnreleasableByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/buffer/UnreleasableByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 80
    new-instance v0, Lio/netty/buffer/UnreleasableByteBuf;

    iget-object v1, p0, Lio/netty/buffer/UnreleasableByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/buffer/UnreleasableByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public touch()Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 116
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 121
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/netty/buffer/UnreleasableByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnreleasableByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method
