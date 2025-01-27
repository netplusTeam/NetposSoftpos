.class final Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;
.super Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;
.source "AdvancedLeakAwareCompositeByteBuf.java"


# direct methods
.method constructor <init>(Lio/netty/buffer/CompositeByteBuf;Lio/netty/util/ResourceLeakTracker;)V
    .locals 0
    .param p1, "wrapped"    # Lio/netty/buffer/CompositeByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/CompositeByteBuf;",
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p2, "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;-><init>(Lio/netty/buffer/CompositeByteBuf;Lio/netty/util/ResourceLeakTracker;)V

    .line 40
    return-void
.end method


# virtual methods
.method public addComponent(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 902
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 903
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->addComponent(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 884
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 885
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->addComponent(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "cIndex"    # I
    .param p3, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 938
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 939
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 920
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 921
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponents(ILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 914
    .local p2, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 915
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->addComponents(ILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public varargs addComponents(I[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I
    .param p2, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 908
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 909
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->addComponents(I[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponents(Ljava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 896
    .local p1, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 897
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->addComponents(Ljava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponents(ZLjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increaseWriterIndex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 932
    .local p2, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 933
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->addComponents(ZLjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public varargs addComponents(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 926
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 927
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->addComponents(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public varargs addComponents([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 890
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 891
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->addComponents([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addFlattenedComponents(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 944
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 945
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->addFlattenedComponents(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnly()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 99
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->asReadOnly()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bytesBefore(B)I
    .locals 1
    .param p1, "value"    # B

    .line 638
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 639
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->bytesBefore(B)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IB)I
    .locals 1
    .param p1, "length"    # I
    .param p2, "value"    # B

    .line 644
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 645
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->bytesBefore(IB)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IIB)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "value"    # B

    .line 650
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 651
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->bytesBefore(IIB)I

    move-result v0

    return v0
.end method

.method public bridge synthetic capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->capacity(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public capacity(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "newCapacity"    # I

    .line 740
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 741
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->capacity(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public consolidate()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 974
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 975
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->consolidate()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public consolidate(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .line 986
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 987
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->consolidate(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 680
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 681
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 686
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 687
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public decompose(II)Ljava/util/List;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .line 968
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 969
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->decompose(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->discardReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 111
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->discardReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardReadComponents()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 980
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 981
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->discardReadComponents()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 117
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 75
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public ensureWritable(IZ)I
    .locals 1
    .param p1, "minWritableBytes"    # I
    .param p2, "force"    # Z

    .line 128
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 129
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->ensureWritable(IZ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "minWritableBytes"    # I

    .line 122
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 123
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public forEachByte(IILio/netty/util/ByteProcessor;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;

    .line 662
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 663
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v0

    return v0
.end method

.method public forEachByte(Lio/netty/util/ByteProcessor;)I
    .locals 1
    .param p1, "processor"    # Lio/netty/util/ByteProcessor;

    .line 656
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 657
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v0

    return v0
.end method

.method public forEachByteDesc(IILio/netty/util/ByteProcessor;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;

    .line 674
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 675
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->forEachByteDesc(IILio/netty/util/ByteProcessor;)I

    move-result v0

    return v0
.end method

.method public forEachByteDesc(Lio/netty/util/ByteProcessor;)I
    .locals 1
    .param p1, "processor"    # Lio/netty/util/ByteProcessor;

    .line 668
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 669
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->forEachByteDesc(Lio/netty/util/ByteProcessor;)I

    move-result v0

    return v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 134
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 135
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .line 140
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 141
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 993
    invoke-super/range {p0 .. p5}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 255
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 212
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 213
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 218
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 219
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 224
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 249
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 242
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 243
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .line 230
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 231
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 236
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .line 194
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 195
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getCharSequence(IILjava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 260
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 261
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getCharSequence(IILjava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 206
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 207
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .line 200
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 201
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 176
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 177
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getIntLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 770
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 771
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getIntLE(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 188
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 189
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 782
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 783
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .line 164
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 165
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getMedium(I)I

    move-result v0

    return v0
.end method

.method public getMediumLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 764
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 765
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getMediumLE(I)I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .line 152
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 153
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getShortLE(I)S
    .locals 1
    .param p1, "index"    # I

    .line 746
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 747
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getShortLE(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedByte(I)S
    .locals 1
    .param p1, "index"    # I

    .line 146
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 147
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getUnsignedByte(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedInt(I)J
    .locals 2
    .param p1, "index"    # I

    .line 182
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 183
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedIntLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 776
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 777
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .line 170
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 171
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedMediumLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 758
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 759
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getUnsignedMediumLE(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 1
    .param p1, "index"    # I

    .line 158
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 159
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShortLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 752
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 753
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->getUnsignedShortLE(I)I

    move-result v0

    return v0
.end method

.method public indexOf(IIB)I
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 632
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 633
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->indexOf(IIB)I

    move-result v0

    return v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 722
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 723
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 105
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 963
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected newLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)Lio/netty/buffer/AdvancedLeakAwareByteBuf;
    .locals 1
    .param p1, "wrapped"    # Lio/netty/buffer/ByteBuf;
    .param p2, "trackedByteBuf"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/AdvancedLeakAwareByteBuf;"
        }
    .end annotation

    .line 1053
    .local p3, "leakTracker":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    new-instance v0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;

    invoke-direct {v0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V

    return-object v0
.end method

.method protected bridge synthetic newLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)Lio/netty/buffer/SimpleLeakAwareByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->newLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)Lio/netty/buffer/AdvancedLeakAwareByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public nioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 698
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 699
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 704
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 705
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBufferCount()I
    .locals 1

    .line 692
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 693
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->nioBufferCount()I

    move-result v0

    return v0
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    .line 710
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 711
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 716
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 717
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "endianness"    # Ljava/nio/ByteOrder;

    .line 44
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 45
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBoolean()Z
    .locals 1

    .line 374
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 375
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    .line 380
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 381
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/channels/FileChannel;JI)I
    .locals 1
    .param p1, "out"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1004
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 1005
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readBytes(Ljava/nio/channels/FileChannel;JI)I

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 501
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readBytes(Ljava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public readBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 452
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 453
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->readBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->readBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 458
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 459
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 464
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 465
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 470
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 471
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 495
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 488
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 489
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # [B

    .line 476
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 477
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 482
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 483
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readChar()C
    .locals 1

    .line 434
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 435
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readChar()C

    move-result v0

    return v0
.end method

.method public readCharSequence(ILjava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 506
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 507
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readCharSequence(ILjava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .locals 2

    .line 446
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 447
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 440
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 441
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readFloat()F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    .line 416
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 417
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLE()I
    .locals 1

    .line 842
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 843
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readIntLE()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .line 428
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 429
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLE()J
    .locals 2

    .line 854
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 855
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readLongLE()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMedium()I
    .locals 1

    .line 404
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 405
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readMedium()I

    move-result v0

    return v0
.end method

.method public readMediumLE()I
    .locals 1

    .line 830
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 831
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readMediumLE()I

    move-result v0

    return v0
.end method

.method public readRetainedSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 92
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 93
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readShort()S
    .locals 1

    .line 392
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 393
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLE()S
    .locals 1

    .line 818
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 819
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readShortLE()S

    move-result v0

    return v0
.end method

.method public readSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 86
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 87
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()S
    .locals 1

    .line 386
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 387
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readUnsignedByte()S

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 2

    .line 422
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 423
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedIntLE()J
    .locals 2

    .line 848
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 849
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readUnsignedIntLE()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .locals 1

    .line 410
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 411
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readUnsignedMedium()I

    move-result v0

    return v0
.end method

.method public readUnsignedMediumLE()I
    .locals 1

    .line 836
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 837
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readUnsignedMediumLE()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1

    .line 398
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 399
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public readUnsignedShortLE()I
    .locals 1

    .line 824
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 825
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->readUnsignedShortLE()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 1028
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    .line 1029
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 1034
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    .line 1035
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->release(I)Z

    move-result v0

    return v0
.end method

.method public removeComponent(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I

    .line 950
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 951
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->removeComponent(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public removeComponents(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .line 956
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 957
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->removeComponents(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 1016
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    .line 1017
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retain(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increment"    # I

    .line 1022
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    .line 1023
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public retainedDuplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 81
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 57
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->retainedSlice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 68
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 69
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBoolean(IZ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setBoolean(IZ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(IZ)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 266
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 267
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setBoolean(IZ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setByte(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setByte(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 272
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 273
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setByte(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 357
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 999
    invoke-super/range {p0 .. p5}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 363
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;

    .line 320
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 321
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 326
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 327
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 332
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 333
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 350
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 351
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .line 338
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 339
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 344
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 345
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setChar(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setChar(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 302
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 303
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setChar(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setCharSequence(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "sequence"    # Ljava/lang/CharSequence;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 812
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 813
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setCharSequence(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setDouble(ID)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setDouble(ID)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 314
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 315
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setDouble(ID)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setFloat(IF)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setFloat(IF)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 308
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 309
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setFloat(IF)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setInt(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setInt(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 290
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 291
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setInt(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setIntLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 800
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 801
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setLong(IJ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setLong(IJ)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 296
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 297
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setLong(IJ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setLongLE(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 806
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 807
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setLongLE(IJ)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setMedium(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setMedium(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 284
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 285
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setMedium(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setMediumLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 794
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 795
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setMediumLE(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setShort(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setShort(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 278
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 279
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setShort(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setShortLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 788
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 789
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setShortLE(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->setZero(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setZero(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 368
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 369
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->setZero(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic skipBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->skipBytes(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public skipBytes(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 512
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 513
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->skipBytes(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public slice()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 51
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 62
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 63
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 734
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 735
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 728
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 729
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->touch()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 1040
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    .line 1041
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 1046
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0, p1}, Lio/netty/util/ResourceLeakTracker;->record(Ljava/lang/Object;)V

    .line 1047
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->touch()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # Z

    .line 518
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 519
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeByte(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeByte(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeByte(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 524
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 525
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeByte(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 609
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeBytes(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public writeBytes(Ljava/nio/channels/FileChannel;JI)I
    .locals 1
    .param p1, "in"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 1011
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeBytes(Ljava/nio/channels/FileChannel;JI)I

    move-result v0

    return v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .param p1, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 615
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;

    .line 572
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 573
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 578
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 579
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 584
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 585
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 602
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 603
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # [B

    .line 590
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 591
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 596
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 597
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeChar(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeChar(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 554
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 555
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeChar(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 626
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 627
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeDouble(D)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeDouble(D)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # D

    .line 566
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 567
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeDouble(D)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeFloat(F)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeFloat(F)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # F

    .line 560
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 561
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeFloat(F)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeInt(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 542
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 543
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeInt(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLE(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 872
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 873
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeIntLE(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeLong(J)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # J

    .line 548
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 549
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeLong(J)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLE(J)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # J

    .line 878
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 879
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeLongLE(J)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeMedium(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeMedium(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 536
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 537
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeMedium(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeMediumLE(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 866
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 867
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeMediumLE(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeShort(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 530
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 531
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeShort(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLE(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 860
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 861
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeShortLE(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->writeZero(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeZero(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 620
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 621
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;->writeZero(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method
