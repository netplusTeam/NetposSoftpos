.class public Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;
.super Lorg/HdrHistogram/packedarray/PackedLongArray;
.source "ConcurrentPackedLongArray.java"


# instance fields
.field transient wrp:Lorg/HdrHistogram/WriterReaderPhaser;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "virtualLength"    # I

    .line 28
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;-><init>(II)V

    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "virtualLength"    # I
    .param p2, "initialPhysicalLength"    # I

    .line 32
    invoke-direct {p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;-><init>()V

    .line 36
    new-instance v0, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v0}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 33
    new-instance v0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;

    invoke-direct {v0, p1, p2}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->setArrayContext(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V

    .line 34
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "o"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 166
    new-instance v0, Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-direct {v0}, Lorg/HdrHistogram/WriterReaderPhaser;-><init>()V

    iput-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    .line 167
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 157
    invoke-super {p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 160
    nop

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 160
    throw v0
.end method

.method clearContents()V
    .locals 2

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 127
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->clearContents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 130
    nop

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 130
    throw v0
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->copy()Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;
    .locals 3

    .line 118
    new-instance v0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;

    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->length()I

    move-result v1

    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->getPhysicalLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;-><init>(II)V

    .line 119
    .local v0, "copy":Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;
    invoke-virtual {v0, p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->add(Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;)V

    .line 120
    return-object v0
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/packedarray/PackedLongArray;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->copy()Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;

    move-result-object v0

    return-object v0
.end method

.method criticalSectionEnter()J
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionEnter()J

    move-result-wide v0

    return-wide v0
.end method

.method criticalSectionExit(J)V
    .locals 1
    .param p1, "criticalValueAtEnter"    # J

    .line 140
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0, p1, p2}, Lorg/HdrHistogram/WriterReaderPhaser;->writerCriticalSectionExit(J)V

    .line 141
    return-void
.end method

.method resizeStorageArray(I)V
    .locals 6
    .param p1, "newPhysicalLengthInLongs"    # I

    .line 42
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 44
    new-instance v0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;

    .line 46
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v1

    .line 47
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;-><init>(ILorg/HdrHistogram/packedarray/AbstractPackedArrayContext;I)V

    .line 51
    .local v0, "newArrayContext":Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v1

    .line 52
    .local v1, "inactiveArrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->setArrayContext(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V

    .line 54
    iget-object v2, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v0    # "newArrayContext":Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 63
    nop

    .line 66
    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->nonZeroValues()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/HdrHistogram/packedarray/IterationValue;

    .line 67
    .local v2, "v":Lorg/HdrHistogram/packedarray/IterationValue;
    invoke-virtual {v2}, Lorg/HdrHistogram/packedarray/IterationValue;->getIndex()I

    move-result v3

    invoke-virtual {v2}, Lorg/HdrHistogram/packedarray/IterationValue;->getValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->add(IJ)V

    .line 68
    .end local v2    # "v":Lorg/HdrHistogram/packedarray/IterationValue;
    goto :goto_0

    .line 72
    :cond_0
    return-void

    .line 62
    .end local v1    # "inactiveArrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 63
    throw v0
.end method

.method public setVirtualLength(I)V
    .locals 6
    .param p1, "newVirtualArrayLength"    # I

    .line 76
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 84
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v0

    .line 85
    .local v0, "currentArrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->determineTopLevelShiftForVirtualLength(I)I

    move-result v1

    .line 87
    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getTopLevelShift()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setVirtualLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v1, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 90
    return-void

    .line 92
    :cond_0
    move-object v1, v0

    .line 93
    .local v1, "inactiveArrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    :try_start_1
    new-instance v2, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;

    .line 97
    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->length()I

    move-result v3

    invoke-direct {v2, p1, v1, v3}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;-><init>(ILorg/HdrHistogram/packedarray/AbstractPackedArrayContext;I)V

    .line 93
    invoke-virtual {p0, v2}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->setArrayContext(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V

    .line 100
    iget-object v2, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v2}, Lorg/HdrHistogram/WriterReaderPhaser;->flipPhase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v0    # "currentArrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 109
    nop

    .line 111
    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->nonZeroValues()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/HdrHistogram/packedarray/IterationValue;

    .line 112
    .local v2, "v":Lorg/HdrHistogram/packedarray/IterationValue;
    invoke-virtual {v2}, Lorg/HdrHistogram/packedarray/IterationValue;->getIndex()I

    move-result v3

    invoke-virtual {v2}, Lorg/HdrHistogram/packedarray/IterationValue;->getValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->add(IJ)V

    .line 113
    .end local v2    # "v":Lorg/HdrHistogram/packedarray/IterationValue;
    goto :goto_0

    .line 114
    :cond_1
    return-void

    .line 108
    .end local v1    # "inactiveArrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 109
    throw v0

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set virtual length, as requested length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is smaller than the current virtual length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v0}, Lorg/HdrHistogram/WriterReaderPhaser;->readerLock()V

    .line 147
    invoke-super {p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v1, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 147
    return-object v0

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedLongArray;->wrp:Lorg/HdrHistogram/WriterReaderPhaser;

    invoke-virtual {v1}, Lorg/HdrHistogram/WriterReaderPhaser;->readerUnlock()V

    .line 150
    throw v0
.end method
