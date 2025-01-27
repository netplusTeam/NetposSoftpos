.class public Lorg/HdrHistogram/packedarray/PackedLongArray;
.super Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;
.source "PackedLongArray.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "virtualLength"    # I

    .line 12
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/packedarray/PackedLongArray;-><init>(II)V

    .line 13
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "virtualLength"    # I
    .param p2, "initialPhysicalLength"    # I

    .line 15
    invoke-direct {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;-><init>()V

    .line 16
    new-instance v0, Lorg/HdrHistogram/packedarray/PackedArrayContext;

    invoke-direct {v0, p1, p2}, Lorg/HdrHistogram/packedarray/PackedArrayContext;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->setArrayContext(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V

    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic add(IJ)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->add(IJ)V

    return-void
.end method

.method public bridge synthetic add(Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->add(Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;)V

    return-void
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 7
    invoke-super {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->clear()V

    return-void
.end method

.method clearContents()V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->clearContents()V

    .line 62
    return-void
.end method

.method public bridge synthetic copy()Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->copy()Lorg/HdrHistogram/packedarray/PackedLongArray;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/HdrHistogram/packedarray/PackedLongArray;
    .locals 3

    .line 54
    new-instance v0, Lorg/HdrHistogram/packedarray/PackedLongArray;

    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->length()I

    move-result v1

    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->getPhysicalLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/HdrHistogram/packedarray/PackedLongArray;-><init>(II)V

    .line 55
    .local v0, "copy":Lorg/HdrHistogram/packedarray/PackedLongArray;
    invoke-virtual {v0, p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->add(Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;)V

    .line 56
    return-object v0
.end method

.method criticalSectionEnter()J
    .locals 2

    .line 66
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method criticalSectionExit(J)V
    .locals 0
    .param p1, "criticalValueAtEnter"    # J

    .line 71
    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)J
    .locals 2

    .line 7
    invoke-super {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getEndTimeStamp()J
    .locals 2

    .line 7
    invoke-super {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->getEndTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getPhysicalLength()I
    .locals 1

    .line 7
    invoke-super {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->getPhysicalLength()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStartTimeStamp()J
    .locals 2

    .line 7
    invoke-super {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->getStartTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 7
    invoke-super {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic increment(I)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->increment(I)V

    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 7
    invoke-super {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic length()I
    .locals 1

    .line 7
    invoke-super {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->length()I

    move-result v0

    return v0
.end method

.method public bridge synthetic nonZeroValues()Ljava/lang/Iterable;
    .locals 1

    .line 7
    invoke-super {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->nonZeroValues()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method resizeStorageArray(I)V
    .locals 7
    .param p1, "newPhysicalLengthInLongs"    # I

    .line 21
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v0

    .line 22
    .local v0, "oldArrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    new-instance v1, Lorg/HdrHistogram/packedarray/PackedArrayContext;

    .line 23
    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v2

    invoke-direct {v1, v2, v0, p1}, Lorg/HdrHistogram/packedarray/PackedArrayContext;-><init>(ILorg/HdrHistogram/packedarray/AbstractPackedArrayContext;I)V

    .line 24
    .local v1, "newArrayContext":Lorg/HdrHistogram/packedarray/PackedArrayContext;
    invoke-virtual {p0, v1}, Lorg/HdrHistogram/packedarray/PackedLongArray;->setArrayContext(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V

    .line 25
    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->nonZeroValues()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/HdrHistogram/packedarray/IterationValue;

    .line 26
    .local v3, "v":Lorg/HdrHistogram/packedarray/IterationValue;
    invoke-virtual {v3}, Lorg/HdrHistogram/packedarray/IterationValue;->getIndex()I

    move-result v4

    invoke-virtual {v3}, Lorg/HdrHistogram/packedarray/IterationValue;->getValue()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lorg/HdrHistogram/packedarray/PackedLongArray;->set(IJ)V

    .line 27
    .end local v3    # "v":Lorg/HdrHistogram/packedarray/IterationValue;
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public bridge synthetic set(IJ)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2, p3}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->set(IJ)V

    return-void
.end method

.method public bridge synthetic setEndTimeStamp(J)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->setEndTimeStamp(J)V

    return-void
.end method

.method public bridge synthetic setStartTimeStamp(J)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->setStartTimeStamp(J)V

    return-void
.end method

.method public setVirtualLength(I)V
    .locals 7
    .param p1, "newVirtualArrayLength"    # I

    .line 32
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 37
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->getArrayContext()Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    move-result-object v0

    .line 38
    .local v0, "currentArrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->determineTopLevelShiftForVirtualLength(I)I

    move-result v1

    .line 40
    invoke-virtual {v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getTopLevelShift()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setVirtualLength(I)V

    .line 43
    return-void

    .line 45
    :cond_0
    move-object v1, v0

    .line 46
    .local v1, "oldArrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    new-instance v2, Lorg/HdrHistogram/packedarray/PackedArrayContext;

    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->length()I

    move-result v3

    invoke-direct {v2, p1, v1, v3}, Lorg/HdrHistogram/packedarray/PackedArrayContext;-><init>(ILorg/HdrHistogram/packedarray/AbstractPackedArrayContext;I)V

    invoke-virtual {p0, v2}, Lorg/HdrHistogram/packedarray/PackedLongArray;->setArrayContext(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V

    .line 47
    invoke-virtual {v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->nonZeroValues()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/HdrHistogram/packedarray/IterationValue;

    .line 48
    .local v3, "v":Lorg/HdrHistogram/packedarray/IterationValue;
    invoke-virtual {v3}, Lorg/HdrHistogram/packedarray/IterationValue;->getIndex()I

    move-result v4

    invoke-virtual {v3}, Lorg/HdrHistogram/packedarray/IterationValue;->getValue()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lorg/HdrHistogram/packedarray/PackedLongArray;->set(IJ)V

    .line 49
    .end local v3    # "v":Lorg/HdrHistogram/packedarray/IterationValue;
    goto :goto_0

    .line 50
    :cond_1
    return-void

    .line 33
    .end local v0    # "currentArrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    .end local v1    # "oldArrayContext":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
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

    .line 35
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedLongArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 7
    invoke-super {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
