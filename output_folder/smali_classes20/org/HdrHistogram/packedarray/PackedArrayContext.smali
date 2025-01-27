.class Lorg/HdrHistogram/packedarray/PackedArrayContext;
.super Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
.source "PackedArrayContext.java"


# instance fields
.field private array:[J

.field private populatedShortLength:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "virtualLength"    # I
    .param p2, "initialPhysicalLength"    # I

    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/HdrHistogram/packedarray/PackedArrayContext;-><init>(IIZ)V

    .line 23
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 1
    .param p1, "virtualLength"    # I
    .param p2, "initialPhysicalLength"    # I
    .param p3, "allocateArray"    # Z

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;-><init>(II)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->populatedShortLength:I

    .line 14
    if-eqz p3, :cond_0

    .line 15
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedArrayContext;->getPhysicalLength()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    .line 16
    invoke-virtual {p0, p1}, Lorg/HdrHistogram/packedarray/PackedArrayContext;->init(I)V

    .line 18
    :cond_0
    return-void
.end method

.method constructor <init>(ILorg/HdrHistogram/packedarray/AbstractPackedArrayContext;I)V
    .locals 1
    .param p1, "virtualLength"    # I
    .param p2, "from"    # Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    .param p3, "newPhysicalArrayLength"    # I

    .line 28
    invoke-direct {p0, p1, p3}, Lorg/HdrHistogram/packedarray/PackedArrayContext;-><init>(II)V

    .line 29
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedArrayContext;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0, p2}, Lorg/HdrHistogram/packedarray/PackedArrayContext;->populateEquivalentEntriesWithZerosFromOther(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method addAndGetAtUnpackedIndex(IJ)J
    .locals 3
    .param p1, "index"    # I
    .param p2, "valueToAdd"    # J

    .line 111
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    aget-wide v1, v0, p1

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    .line 112
    return-wide v1
.end method

.method casAtLongIndex(IJJ)Z
    .locals 3
    .param p1, "longIndex"    # I
    .param p2, "expectedValue"    # J
    .param p4, "newValue"    # J

    .line 67
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    aget-wide v1, v0, p1

    cmp-long v1, v1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    aput-wide p4, v0, p1

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method casPopulatedLongLength(II)Z
    .locals 2
    .param p1, "expectedPopulatedLongLength"    # I
    .param p2, "newPopulatedLongLength"    # I

    .line 56
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedArrayContext;->getPopulatedLongLength()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    iget v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->populatedShortLength:I

    shl-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/packedarray/PackedArrayContext;->casPopulatedShortLength(II)Z

    move-result v0

    return v0
.end method

.method casPopulatedShortLength(II)Z
    .locals 1
    .param p1, "expectedPopulatedShortLength"    # I
    .param p2, "newPopulatedShortLength"    # I

    .line 49
    iget v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->populatedShortLength:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    iput p2, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->populatedShortLength:I

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method clearContents()V
    .locals 3

    .line 79
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 80
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/PackedArrayContext;->getVirtualLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/PackedArrayContext;->init(I)V

    .line 81
    return-void
.end method

.method getAtLongIndex(I)J
    .locals 2
    .param p1, "longIndex"    # I

    .line 62
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method getAtUnpackedIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .line 90
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method getPopulatedShortLength()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->populatedShortLength:I

    return v0
.end method

.method incrementAndGetAtUnpackedIndex(I)J
    .locals 5
    .param p1, "index"    # I

    .line 105
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 106
    return-wide v1
.end method

.method lazySetAtLongIndex(IJ)V
    .locals 1
    .param p1, "longIndex"    # I
    .param p2, "newValue"    # J

    .line 74
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    aput-wide p2, v0, p1

    .line 75
    return-void
.end method

.method lazysetAtUnpackedIndex(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "newValue"    # J

    .line 100
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    aput-wide p2, v0, p1

    .line 101
    return-void
.end method

.method length()I
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    array-length v0, v0

    return v0
.end method

.method resizeArray(I)V
    .locals 1
    .param p1, "newLength"    # I

    .line 85
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    .line 86
    return-void
.end method

.method setAtUnpackedIndex(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "newValue"    # J

    .line 95
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    aput-wide p2, v0, p1

    .line 96
    return-void
.end method

.method unpackedToString()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/PackedArrayContext;->array:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
