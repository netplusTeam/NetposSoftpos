.class Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;
.super Lorg/HdrHistogram/packedarray/PackedArrayContext;
.source "ConcurrentPackedArrayContext.java"


# static fields
.field private static final populatedShortLengthUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private array:Ljava/util/concurrent/atomic/AtomicLongArray;

.field private volatile populatedShortLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;

    .line 37
    const-string v1, "populatedShortLength"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->populatedShortLengthUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 36
    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .param p1, "virtualLength"    # I
    .param p2, "initialPhysicalLength"    # I

    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;-><init>(IIZ)V

    .line 22
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 2
    .param p1, "virtualLength"    # I
    .param p2, "initialPhysicalLength"    # I
    .param p3, "allocateArray"    # Z

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/HdrHistogram/packedarray/PackedArrayContext;-><init>(IIZ)V

    .line 13
    if-eqz p3, :cond_0

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->getPhysicalLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 15
    invoke-virtual {p0, p1}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->init(I)V

    .line 17
    :cond_0
    return-void
.end method

.method constructor <init>(ILorg/HdrHistogram/packedarray/AbstractPackedArrayContext;I)V
    .locals 1
    .param p1, "newVirtualCountsArraySize"    # I
    .param p2, "from"    # Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    .param p3, "arrayLength"    # I

    .line 27
    invoke-direct {p0, p1, p3}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;-><init>(II)V

    .line 28
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, p2}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->populateEquivalentEntriesWithZerosFromOther(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method addAndGetAtUnpackedIndex(IJ)J
    .locals 2
    .param p1, "index"    # I
    .param p2, "valueToAdd"    # J

    .line 117
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->addAndGet(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method casAtLongIndex(IJJ)Z
    .locals 6
    .param p1, "longIndex"    # I
    .param p2, "expectedValue"    # J
    .param p4, "newValue"    # J

    .line 69
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    return v0
.end method

.method casPopulatedLongLength(II)Z
    .locals 3
    .param p1, "expectedPopulatedLongLength"    # I
    .param p2, "newPopulatedLongLength"    # I

    .line 56
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->getPopulatedShortLength()I

    move-result v0

    .line 57
    .local v0, "existingShortLength":I
    add-int/lit8 v1, v0, 0x3

    shr-int/lit8 v1, v1, 0x2

    .line 58
    .local v1, "existingLongLength":I
    if-eq v1, p1, :cond_0

    const/4 v2, 0x0

    return v2

    .line 59
    :cond_0
    shl-int/lit8 v2, p2, 0x2

    invoke-virtual {p0, v0, v2}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->casPopulatedShortLength(II)Z

    move-result v2

    return v2
.end method

.method casPopulatedShortLength(II)Z
    .locals 1
    .param p1, "expectedPopulatedShortLength"    # I
    .param p2, "newPopulatedShortLength"    # I

    .line 51
    sget-object v0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->populatedShortLengthUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method clearContents()V
    .locals 4

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->getVirtualLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->init(I)V

    .line 83
    return-void
.end method

.method getAtLongIndex(I)J
    .locals 2
    .param p1, "longIndex"    # I

    .line 64
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getAtUnpackedIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .line 97
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getPopulatedShortLength()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->populatedShortLength:I

    return v0
.end method

.method incrementAndGetAtUnpackedIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .line 112
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->incrementAndGet(I)J

    move-result-wide v0

    return-wide v0
.end method

.method lazySetAtLongIndex(IJ)V
    .locals 1
    .param p1, "longIndex"    # I
    .param p2, "newValue"    # J

    .line 74
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 75
    return-void
.end method

.method lazysetAtUnpackedIndex(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "newValue"    # J

    .line 107
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 108
    return-void
.end method

.method length()I
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    return v0
.end method

.method resizeArray(I)V
    .locals 5
    .param p1, "newLength"    # I

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    .line 88
    .local v0, "newArray":Ljava/util/concurrent/atomic/AtomicLongArray;
    iget-object v1, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 89
    .local v1, "copyLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 90
    iget-object v3, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->lazySet(IJ)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "i":I
    :cond_0
    iput-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 93
    return-void
.end method

.method setAtUnpackedIndex(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "newValue"    # J

    .line 102
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 103
    return-void
.end method

.method unpackedToString()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/HdrHistogram/packedarray/ConcurrentPackedArrayContext;->array:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
