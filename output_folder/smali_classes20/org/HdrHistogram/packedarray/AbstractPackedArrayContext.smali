.class abstract Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
.super Ljava/lang/Object;
.source "AbstractPackedArrayContext.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;,
        Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValues;,
        Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$NonZeroValuesIterator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LEAF_LEVEL_SHIFT:I = 0x3

.field static final MAX_SUPPORTED_PACKED_COUNTS_ARRAY_LENGTH:I = 0x1fff

.field static final MINIMUM_INITIAL_PACKED_ARRAY_CAPACITY:I = 0x10

.field private static final NON_LEAF_ENTRY_HEADER_SIZE_IN_SHORTS:I = 0x2

.field private static final NON_LEAF_ENTRY_PREVIOUS_VERSION_OFFSET:I = 0x1

.field private static final NON_LEAF_ENTRY_SLOT_INDICATORS_OFFSET:I = 0x0

.field private static final NUMBER_OF_SETS:I = 0x8

.field private static final PACKED_ARRAY_GROWTH_FRACTION_POW2:I = 0x4

.field private static final PACKED_ARRAY_GROWTH_INCREMENT:I = 0x10

.field private static final SET_0_START_INDEX:I


# instance fields
.field private final isPacked:Z

.field private physicalLength:I

.field private topLevelShift:I

.field private virtualLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 22
    return-void
.end method

.method constructor <init>(II)V
    .locals 3
    .param p1, "virtualLength"    # I
    .param p2, "initialPhysicalLength"    # I

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->virtualLength:I

    .line 151
    const v1, 0x7fffffff

    iput v1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->topLevelShift:I

    .line 154
    const/16 v1, 0x10

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->physicalLength:I

    .line 155
    const/16 v2, 0x1fff

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked:Z

    .line 156
    if-nez v0, :cond_1

    .line 157
    iput p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->physicalLength:I

    .line 159
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;I)I
    .locals 1
    .param p0, "x0"    # Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->findFirstPotentiallyPopulatedVirtualIndexStartingAt(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;I)J
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->contextLocalGetValueAtIndex(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private casIndexAtEntrySlot(IISS)Z
    .locals 1
    .param p1, "entryIndex"    # I
    .param p2, "slot"    # I
    .param p3, "expectedIndexValue"    # S
    .param p4, "newIndexValue"    # S

    .line 352
    add-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p0, v0, p3, p4}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casAtShortIndex(ISS)Z

    move-result v0

    return v0
.end method

.method private casIndexAtEntrySlotIfNonZeroAndLessThan(IIS)Z
    .locals 2
    .param p1, "entryIndex"    # I
    .param p2, "slot"    # I
    .param p3, "newIndexValue"    # S

    .line 361
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getIndexAtEntrySlot(II)S

    move-result v0

    .line 362
    .local v0, "existingIndexValue":S
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 363
    :cond_0
    if-gt p3, v0, :cond_1

    return v1

    .line 364
    :cond_1
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casIndexAtEntrySlot(IISS)Z

    move-result v0

    .line 365
    .local v0, "success":Z
    if-eqz v0, :cond_2

    .line 366
    const/4 v1, 0x1

    return v1

    .line 365
    :cond_2
    goto :goto_0
.end method

.method private consolidateEntry(I)V
    .locals 12
    .param p1, "entryIndex"    # I

    .line 424
    invoke-direct {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPreviousVersionIndex(I)S

    move-result v0

    .line 425
    .local v0, "previousVersionIndex":I
    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-direct {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPreviousVersionIndex(I)S

    move-result v1

    if-nez v1, :cond_5

    .line 430
    invoke-direct {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPackedSlotIndicators(I)I

    move-result v1

    .line 433
    .local v1, "previousVersionPackedSlotsIndicators":I
    invoke-direct {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPackedSlotIndicators(I)I

    move-result v2

    .line 434
    .local v2, "packedSlotsIndicators":I
    xor-int v3, v2, v1

    .line 435
    .local v3, "insertedSlotMask":I
    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v2

    .line 436
    .local v4, "slotsBelowBitNumber":I
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    .line 437
    .local v5, "insertedSlotIndex":I
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    .line 440
    .local v6, "numberOfSlotsInEntry":I
    const/4 v7, 0x0

    .line 441
    .local v7, "sourceSlot":I
    const/4 v8, 0x0

    .local v8, "targetSlot":I
    :goto_0
    const/4 v9, 0x0

    if-ge v8, v6, :cond_4

    .line 442
    if-eq v8, v5, :cond_3

    .line 443
    const/4 v10, 0x1

    .line 445
    .local v10, "success":Z
    :cond_1
    invoke-direct {p0, v0, v7}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getIndexAtEntrySlot(II)S

    move-result v11

    .line 446
    .local v11, "indexAtSlot":S
    if-eqz v11, :cond_2

    .line 449
    invoke-direct {p0, p1, v8, v11}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casIndexAtEntrySlotIfNonZeroAndLessThan(IIS)Z

    .line 453
    invoke-direct {p0, v0, v7, v11, v9}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casIndexAtEntrySlot(IISS)Z

    move-result v10

    .line 456
    .end local v11    # "indexAtSlot":S
    :cond_2
    if-eqz v10, :cond_1

    .line 457
    add-int/lit8 v7, v7, 0x1

    .line 441
    .end local v10    # "success":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 461
    .end local v8    # "targetSlot":I
    :cond_4
    invoke-direct {p0, p1, v9}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setPreviousVersionIndex(IS)V

    .line 462
    return-void

    .line 427
    .end local v1    # "previousVersionPackedSlotsIndicators":I
    .end local v2    # "packedSlotsIndicators":I
    .end local v3    # "insertedSlotMask":I
    .end local v4    # "slotsBelowBitNumber":I
    .end local v5    # "insertedSlotIndex":I
    .end local v6    # "numberOfSlotsInEntry":I
    .end local v7    # "sourceSlot":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Encountered Previous Version Entry that is not itself consolidated."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private contextLocalGetValueAtIndex(I)J
    .locals 8
    .param p1, "virtualIndex"    # I

    .line 649
    const-wide/16 v0, 0x0

    .line 650
    .local v0, "value":J
    const/4 v2, 0x0

    .local v2, "byteNum":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    .line 651
    const/4 v3, 0x0

    .line 655
    .local v3, "packedIndex":I
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v2, p1, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPackedIndex(IIZ)I

    move-result v4

    move v3, v4

    .line 656
    if-gez v3, :cond_1

    .line 657
    return-wide v0

    .line 659
    :cond_1
    invoke-virtual {p0, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtByteIndex(I)B

    move-result v4
    :try_end_0
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-int/lit8 v6, v2, 0x3

    shl-long/2addr v4, v6

    .line 662
    .local v4, "byteValueAtPackedIndex":J
    nop

    .line 663
    if-eqz v3, :cond_0

    .line 665
    add-long/2addr v0, v4

    .line 650
    .end local v3    # "packedIndex":I
    .end local v4    # "byteValueAtPackedIndex":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .restart local v3    # "packedIndex":I
    :catch_0
    move-exception v4

    .line 661
    .local v4, "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Should never encounter a resize excpetion without inserts"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 667
    .end local v2    # "byteNum":I
    .end local v3    # "packedIndex":I
    .end local v4    # "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    :cond_2
    return-wide v0
.end method

.method private copyEntriesAtLevelFromOther(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;III)V
    .locals 9
    .param p1, "other"    # Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;
    .param p2, "otherLevelEntryIndex"    # I
    .param p3, "levelEntryIndexPointer"    # I
    .param p4, "otherIndexShift"    # I

    .line 720
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p4, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 721
    .local v1, "nextLevelIsLeaf":Z
    :goto_0
    invoke-direct {p1, p2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPackedSlotIndicators(I)I

    move-result v2

    .line 722
    .local v2, "packedSlotIndicators":I
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 723
    .local v3, "numberOfSlots":I
    add-int/lit8 v4, v3, 0x2

    .line 726
    .local v4, "sizeOfEntry":I
    const/4 v5, 0x0

    .line 729
    .local v5, "entryIndex":I
    :goto_1
    :try_start_0
    invoke-direct {p0, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->newEntry(I)I

    move-result v6
    :try_end_0
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 732
    goto :goto_2

    .line 730
    :catch_0
    move-exception v6

    .line 731
    .local v6, "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    invoke-virtual {v6}, Lorg/HdrHistogram/packedarray/ResizeException;->getNewSize()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->resizeArray(I)V

    .line 734
    .end local v6    # "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    :goto_2
    if-eqz v5, :cond_4

    .line 736
    int-to-short v6, v5

    invoke-virtual {p0, p3, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setAtShortIndex(IS)V

    .line 737
    add-int/lit8 v6, v5, 0x0

    int-to-short v7, v2

    invoke-virtual {p0, v6, v7}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setAtShortIndex(IS)V

    .line 738
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setAtShortIndex(IS)V

    .line 739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v3, :cond_3

    .line 740
    if-eqz v1, :cond_2

    .line 742
    const/4 v6, 0x0

    .line 745
    .local v6, "leafEntryIndex":I
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->newLeafEntry()I

    move-result v7
    :try_end_1
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v7

    .line 748
    goto :goto_4

    .line 746
    :catch_1
    move-exception v7

    .line 747
    .local v7, "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    invoke-virtual {v7}, Lorg/HdrHistogram/packedarray/ResizeException;->getNewSize()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->resizeArray(I)V

    .line 750
    .end local v7    # "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    :goto_4
    if-eqz v6, :cond_1

    .line 751
    int-to-short v7, v6

    invoke-direct {p0, v5, v0, v7}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setIndexAtEntrySlot(IIS)V

    .line 752
    const-wide/16 v7, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->lazySetAtLongIndex(IJ)V

    .line 753
    .end local v6    # "leafEntryIndex":I
    goto :goto_5

    .line 754
    :cond_2
    invoke-direct {p1, p2, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getIndexAtEntrySlot(II)S

    move-result v6

    .line 755
    .local v6, "otherNextLevelEntryIndex":I
    add-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v0

    add-int/lit8 v8, p4, -0x4

    invoke-direct {p0, p1, v6, v7, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->copyEntriesAtLevelFromOther(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;III)V

    .line 739
    .end local v6    # "otherNextLevelEntryIndex":I
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 760
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 734
    :cond_4
    goto :goto_1
.end method

.method private expandArrayIfNeeded(I)V
    .locals 4
    .param p1, "entryLengthInLongs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/HdrHistogram/packedarray/ResizeException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->length()I

    move-result v0

    .line 381
    .local v0, "currentLength":I
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->length()I

    move-result v1

    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPopulatedLongLength()I

    move-result v2

    add-int/2addr v2, p1

    if-lt v1, v2, :cond_0

    .line 386
    return-void

    .line 382
    :cond_0
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 383
    .local v1, "growthIncrement":I
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPopulatedLongLength()I

    move-result v2

    shr-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 384
    new-instance v2, Lorg/HdrHistogram/packedarray/ResizeException;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Lorg/HdrHistogram/packedarray/ResizeException;-><init>(I)V

    throw v2
.end method

.method private expandEntry(IIIIZ)I
    .locals 9
    .param p1, "existingEntryIndex"    # I
    .param p2, "entryPointerIndex"    # I
    .param p3, "insertedSlotIndex"    # I
    .param p4, "insertedSlotMask"    # I
    .param p5, "nextLevelIsLeaf"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;,
            Lorg/HdrHistogram/packedarray/ResizeException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtShortIndex(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 481
    .local v0, "packedSlotIndicators":I
    or-int/2addr v0, p4

    .line 482
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 483
    .local v1, "numberOfslotsInExpandedEntry":I
    if-ge p3, v1, :cond_2

    .line 486
    add-int/lit8 v2, v1, 0x2

    .line 489
    .local v2, "expandedEntryLength":I
    const/4 v3, 0x0

    .line 490
    .local v3, "indexOfNewNextLevelEntry":I
    if-eqz p5, :cond_0

    .line 491
    invoke-direct {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->newLeafEntry()I

    move-result v3

    goto :goto_0

    .line 495
    :cond_0
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->newEntry(I)I

    move-result v3

    .line 496
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setPackedSlotIndicators(IS)V

    .line 497
    invoke-direct {p0, v3, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setPreviousVersionIndex(IS)V

    .line 499
    :goto_0
    int-to-short v4, v3

    .line 501
    .local v4, "insertedSlotValue":S
    invoke-direct {p0, v2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->newEntry(I)I

    move-result v5

    .line 504
    .local v5, "expandedEntryIndex":I
    int-to-short v6, v0

    invoke-direct {p0, v5, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setPackedSlotIndicators(IS)V

    .line 505
    int-to-short v6, p1

    invoke-direct {p0, v5, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setPreviousVersionIndex(IS)V

    .line 508
    invoke-direct {p0, v5, p3, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setIndexAtEntrySlot(IIS)V

    .line 513
    int-to-short v6, p1

    int-to-short v7, v5

    invoke-virtual {p0, p2, v6, v7}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casAtShortIndex(ISS)Z

    move-result v6

    .line 514
    .local v6, "success":Z
    if-eqz v6, :cond_1

    .line 520
    invoke-direct {p0, v5}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->consolidateEntry(I)V

    .line 522
    return v5

    .line 515
    :cond_1
    new-instance v7, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;-><init>(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$1;)V

    throw v7

    .line 484
    .end local v2    # "expandedEntryLength":I
    .end local v3    # "indexOfNewNextLevelEntry":I
    .end local v4    # "insertedSlotValue":S
    .end local v5    # "expandedEntryIndex":I
    .end local v6    # "success":Z
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "inserted slot index is out of range given provided masks"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private findFirstPotentiallyPopulatedVirtualIndexStartingAt(I)I
    .locals 4
    .param p1, "startingVirtualIndex"    # I

    .line 839
    const/4 v0, -0x1

    .line 843
    .local v0, "nextVirtrualIndex":I
    :goto_0
    const/4 v1, 0x0

    .line 845
    .local v1, "retry":Z
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getRootEntry(I)I

    move-result v2

    .line 846
    .local v2, "entryIndex":I
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v3

    return v3

    .line 847
    :cond_0
    nop

    .line 848
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getTopLevelShift()I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->seekToPopulatedVirtualIndexStartingAtLevel(III)I

    move-result v3
    :try_end_0
    .catch Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 851
    .end local v2    # "entryIndex":I
    goto :goto_1

    .line 849
    :catch_0
    move-exception v2

    .line 850
    .local v2, "ex":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;
    const/4 v1, 0x1

    .line 852
    .end local v2    # "ex":Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;
    :goto_1
    if-nez v1, :cond_3

    .line 855
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_2

    .line 859
    :cond_1
    return v0

    .line 856
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v2

    return v2

    .line 852
    :cond_3
    goto :goto_0
.end method

.method private getIndexAtEntrySlot(II)S
    .locals 1
    .param p1, "entryIndex"    # I
    .param p2, "slot"    # I

    .line 341
    add-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtShortIndex(I)S

    move-result v0

    return v0
.end method

.method private getPackedSlotIndicators(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .line 325
    add-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtShortIndex(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private getPreviousVersionIndex(I)S
    .locals 1
    .param p1, "entryIndex"    # I

    .line 333
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtShortIndex(I)S

    move-result v0

    return v0
.end method

.method private getRootEntry(I)I
    .locals 3
    .param p1, "setNumber"    # I

    .line 541
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getRootEntry(IZ)I

    move-result v0
    :try_end_0
    .catch Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 542
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 543
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Should not Resize or Retry exceptions on real-only read: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getRootEntry(IZ)I
    .locals 5
    .param p1, "setNumber"    # I
    .param p2, "insertAsNeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;,
            Lorg/HdrHistogram/packedarray/ResizeException;
        }
    .end annotation

    .line 549
    add-int/lit8 v0, p1, 0x0

    .line 550
    .local v0, "entryPointerIndex":I
    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getIndexAtShortIndex(I)S

    move-result v1

    .line 552
    .local v1, "entryIndex":I
    if-nez v1, :cond_2

    .line 553
    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 554
    return v2

    .line 557
    :cond_0
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->newEntry(I)I

    move-result v1

    .line 559
    invoke-direct {p0, v1, v2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setPackedSlotIndicators(IS)V

    .line 560
    invoke-direct {p0, v1, v2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setPreviousVersionIndex(IS)V

    .line 562
    int-to-short v3, v1

    invoke-virtual {p0, v0, v2, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casAtShortIndex(ISS)Z

    move-result v2

    .line 563
    .local v2, "success":Z
    if-eqz v2, :cond_1

    goto :goto_0

    .line 564
    :cond_1
    new-instance v3, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;-><init>(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$1;)V

    throw v3

    .line 568
    .end local v2    # "success":Z
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getTopLevelShift()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    invoke-direct {p0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPreviousVersionIndex(I)S

    move-result v2

    if-eqz v2, :cond_3

    .line 569
    invoke-direct {p0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->consolidateEntry(I)V

    .line 571
    :cond_3
    return v1
.end method

.method private leafEntryToString(II)Ljava/lang/String;
    .locals 11
    .param p1, "entryIndex"    # I
    .param p2, "indentLevel"    # I

    .line 1041
    const-string v0, ""

    .line 1042
    .local v0, "output":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1042
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1046
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Leaf bytes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1047
    const/16 v3, 0x38

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0x%02x "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtLongIndex(I)J

    move-result-wide v7

    ushr-long/2addr v7, v3

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 1047
    add-int/lit8 v3, v3, -0x8

    goto :goto_1

    .line 1051
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1054
    goto :goto_2

    .line 1052
    :catch_0
    move-exception v3

    .line 1053
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, "Exception thrown at leafEnty at index %d\n"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private newEntry(I)I
    .locals 5
    .param p1, "entryLengthInShorts"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/HdrHistogram/packedarray/ResizeException;
        }
    .end annotation

    .line 393
    :goto_0
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPopulatedShortLength()I

    move-result v0

    .line 394
    .local v0, "newEntryIndex":I
    shr-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->expandArrayIfNeeded(I)V

    .line 395
    add-int v1, v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casPopulatedShortLength(II)Z

    move-result v1

    .line 396
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 398
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_0

    .line 399
    add-int v3, v0, v2

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setAtShortIndex(IS)V

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 401
    .end local v2    # "i":I
    :cond_0
    return v0

    .line 396
    :cond_1
    goto :goto_0
.end method

.method private newLeafEntry()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/HdrHistogram/packedarray/ResizeException;
        }
    .end annotation

    .line 409
    :goto_0
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPopulatedLongLength()I

    move-result v0

    .line 410
    .local v0, "newEntryIndex":I
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->expandArrayIfNeeded(I)V

    .line 411
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casPopulatedLongLength(II)Z

    move-result v1

    .line 412
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 414
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->lazySetAtLongIndex(IJ)V

    .line 415
    return v0

    .line 412
    :cond_0
    goto :goto_0
.end method

.method private nonLeafEntryToString(III)Ljava/lang/String;
    .locals 12
    .param p1, "entryIndex"    # I
    .param p2, "indexShift"    # I
    .param p3, "indentLevel"    # I

    .line 1006
    const-string v0, ""

    .line 1007
    .local v0, "output":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1011
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPackedSlotIndicators(I)I

    move-result v4

    .line 1012
    .local v4, "packedSlotIndicators":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "slotIndiators: 0x%02x, prevVersionIndex: %3d: [ "

    new-array v7, v1, [Ljava/lang/Object;

    .line 1013
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 1014
    invoke-direct {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPreviousVersionIndex(I)S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1012
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 1015
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    .line 1016
    .local v5, "numberOfslotsInEntry":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 1017
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%d"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getIndexAtEntrySlot(II)S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 1018
    add-int/lit8 v7, v5, -0x1

    if-ge v6, v7, :cond_1

    .line 1019
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 1016
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1022
    .end local v6    # "i":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ] (indexShift = %d)\n"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1023
    const/4 v6, 0x3

    if-ne p2, v6, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v2

    .line 1024
    .local v6, "nextLevelIsLeaf":Z
    :goto_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v5, :cond_5

    .line 1025
    invoke-direct {p0, p1, v7}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getIndexAtEntrySlot(II)S

    move-result v8

    .line 1026
    .local v8, "nextLevelEntryIndex":I
    if-eqz v6, :cond_4

    .line 1027
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p3, 0x4

    invoke-direct {p0, v8, v10}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->leafEntryToString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_4

    .line 1029
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p2, -0x4

    add-int/lit8 v11, p3, 0x4

    invoke-direct {p0, v8, v10, v11}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->nonLeafEntryToString(III)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    .line 1024
    .end local v8    # "nextLevelEntryIndex":I
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1036
    .end local v4    # "packedSlotIndicators":I
    .end local v5    # "numberOfslotsInEntry":I
    .end local v6    # "nextLevelIsLeaf":Z
    .end local v7    # "i":I
    :cond_5
    goto :goto_5

    .line 1033
    :catch_0
    move-exception v4

    .line 1034
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    .line 1035
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1034
    const-string v2, "Exception thrown at nonLeafEnty at index %d with indexShift %d\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_5
    return-object v0
.end method

.method private recordedValuesToString()Ljava/lang/String;
    .locals 9

    .line 1059
    const-string v0, ""

    .line 1061
    .local v0, "output":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->nonZeroValues()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/HdrHistogram/packedarray/IterationValue;

    .line 1062
    .local v2, "v":Lorg/HdrHistogram/packedarray/IterationValue;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[%d] : %d\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lorg/HdrHistogram/packedarray/IterationValue;->getIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lorg/HdrHistogram/packedarray/IterationValue;->getValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 1063
    .end local v2    # "v":Lorg/HdrHistogram/packedarray/IterationValue;
    goto :goto_0

    .line 1064
    :cond_0
    return-object v0

    .line 1065
    :catch_0
    move-exception v1

    .line 1066
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!!! Exception thown in value iteration...\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method private seekToPopulatedVirtualIndexStartingAtLevel(III)I
    .locals 18
    .param p1, "startingVirtualIndex"    # I
    .param p2, "levelEntryIndex"    # I
    .param p3, "indexShift"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;
        }
    .end annotation

    .line 777
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p1

    .line 778
    .local v3, "virtualIndex":I
    ushr-int v4, v3, v2

    const/16 v5, 0xf

    or-int/2addr v4, v5

    const/4 v6, 0x1

    add-int/2addr v4, v6

    shl-int/2addr v4, v2

    .line 779
    .local v4, "firstVirtualIndexPastThisLevel":I
    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 782
    .local v7, "nextLevelIsLeaf":Z
    :goto_0
    invoke-direct {v0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPackedSlotIndicators(I)I

    move-result v8

    .line 783
    .local v8, "packedSlotIndicators":I
    ushr-int v9, v3, v2

    and-int/2addr v9, v5

    .line 784
    .local v9, "startingSlotBitNumber":I
    shl-int v10, v6, v9

    .line 785
    .local v10, "slotMask":I
    add-int/lit8 v11, v10, -0x1

    not-int v11, v11

    and-int/2addr v11, v8

    .line 786
    .local v11, "slotsAtAndAboveBitNumber":I
    invoke-static {v11}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v12

    .line 789
    .local v12, "nextActiveSlotBitNumber":I
    if-le v12, v5, :cond_1

    .line 791
    add-int/lit8 v5, v2, 0x4

    .line 792
    .local v5, "indexShiftAbove":I
    shl-int v13, v6, v5

    add-int/2addr v3, v13

    .line 793
    shl-int v13, v6, v5

    sub-int/2addr v13, v6

    not-int v6, v13

    and-int/2addr v3, v6

    .line 794
    neg-int v6, v3

    return v6

    .line 798
    .end local v5    # "indexShiftAbove":I
    :cond_1
    if-eq v12, v9, :cond_2

    .line 799
    sub-int v13, v12, v9

    shl-int/2addr v13, v2

    add-int/2addr v3, v13

    .line 800
    shl-int v13, v6, v2

    sub-int/2addr v13, v6

    not-int v13, v13

    and-int/2addr v3, v13

    .line 803
    :cond_2
    if-eqz v7, :cond_3

    .line 805
    return v3

    .line 810
    :cond_3
    shl-int v13, v6, v12

    .line 811
    .local v13, "nextSlotMask":I
    add-int/lit8 v14, v13, -0x1

    and-int/2addr v14, v8

    .line 812
    .local v14, "slotsBelowNextBitNumber":I
    invoke-static {v14}, Ljava/lang/Integer;->bitCount(I)I

    move-result v15

    .line 814
    .local v15, "nextSlotNumber":I
    and-int v16, v8, v13

    if-eqz v16, :cond_8

    .line 818
    add-int/lit8 v16, v1, 0x2

    add-int v5, v16, v15

    .line 819
    .local v5, "entryPointerIndex":I
    invoke-virtual {v0, v5}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getIndexAtShortIndex(I)S

    move-result v6

    .line 820
    .local v6, "nextLevelEntryIndex":I
    if-eqz v6, :cond_7

    .line 823
    invoke-direct {v0, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPreviousVersionIndex(I)S

    move-result v17

    if-eqz v17, :cond_4

    .line 824
    invoke-direct {v0, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->consolidateEntry(I)V

    .line 827
    :cond_4
    add-int/lit8 v1, v2, -0x4

    invoke-direct {v0, v3, v6, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->seekToPopulatedVirtualIndexStartingAtLevel(III)I

    move-result v1

    .line 828
    .end local v3    # "virtualIndex":I
    .local v1, "virtualIndex":I
    if-gez v1, :cond_6

    .line 829
    neg-int v3, v1

    .line 833
    .end local v1    # "virtualIndex":I
    .end local v5    # "entryPointerIndex":I
    .end local v6    # "nextLevelEntryIndex":I
    .end local v8    # "packedSlotIndicators":I
    .end local v9    # "startingSlotBitNumber":I
    .end local v10    # "slotMask":I
    .end local v11    # "slotsAtAndAboveBitNumber":I
    .end local v12    # "nextActiveSlotBitNumber":I
    .end local v13    # "nextSlotMask":I
    .end local v14    # "slotsBelowNextBitNumber":I
    .end local v15    # "nextSlotNumber":I
    .restart local v3    # "virtualIndex":I
    if-lt v3, v4, :cond_5

    .line 835
    return v3

    .line 833
    :cond_5
    move/from16 v1, p2

    const/16 v5, 0xf

    const/4 v6, 0x1

    goto :goto_0

    .line 831
    .end local v3    # "virtualIndex":I
    .restart local v1    # "virtualIndex":I
    .restart local v5    # "entryPointerIndex":I
    .restart local v6    # "nextLevelEntryIndex":I
    .restart local v8    # "packedSlotIndicators":I
    .restart local v9    # "startingSlotBitNumber":I
    .restart local v10    # "slotMask":I
    .restart local v11    # "slotsAtAndAboveBitNumber":I
    .restart local v12    # "nextActiveSlotBitNumber":I
    .restart local v13    # "nextSlotMask":I
    .restart local v14    # "slotsBelowNextBitNumber":I
    .restart local v15    # "nextSlotNumber":I
    :cond_6
    return v1

    .line 821
    .end local v1    # "virtualIndex":I
    .restart local v3    # "virtualIndex":I
    :cond_7
    new-instance v1, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;-><init>(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$1;)V

    throw v1

    .line 815
    .end local v5    # "entryPointerIndex":I
    .end local v6    # "nextLevelEntryIndex":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected 0 at slot index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setIndexAtEntrySlot(IIS)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p2, "slot"    # I
    .param p3, "newIndexValue"    # S

    .line 345
    add-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p0, v0, p3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setAtShortIndex(IS)V

    .line 346
    return-void
.end method

.method private setPackedSlotIndicators(IS)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p2, "newPackedSlotIndicators"    # S

    .line 329
    add-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setAtShortIndex(IS)V

    .line 330
    return-void
.end method

.method private setPreviousVersionIndex(IS)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p2, "newPreviosVersionIndex"    # S

    .line 337
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setAtShortIndex(IS)V

    .line 338
    return-void
.end method

.method private setTopLevelShift(I)V
    .locals 0
    .param p1, "topLevelShift"    # I

    .line 982
    iput p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->topLevelShift:I

    .line 983
    return-void
.end method


# virtual methods
.method abstract addAndGetAtUnpackedIndex(IJ)J
.end method

.method addAtByteIndex(IB)J
    .locals 23
    .param p1, "byteIndex"    # I
    .param p2, "valueToAdd"    # B

    .line 297
    shr-int/lit8 v6, p1, 0x3

    .line 298
    .local v6, "longIndex":I
    and-int/lit8 v0, p1, 0x7

    shl-int/lit8 v7, v0, 0x3

    .line 299
    .local v7, "byteShift":I
    const-wide/16 v8, 0xff

    shl-long v10, v8, v7

    .line 303
    .local v10, "byteMask":J
    :goto_0
    move-object/from16 v12, p0

    invoke-virtual {v12, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtLongIndex(I)J

    move-result-wide v13

    .line 304
    .local v13, "currentLongValue":J
    shr-long v0, v13, v7

    and-long v15, v0, v8

    .line 305
    .local v15, "byteValueAsLong":J
    move/from16 v4, p2

    int-to-long v0, v4

    and-long/2addr v0, v8

    add-long v17, v15, v0

    .line 306
    .local v17, "newValue":J
    and-long v19, v17, v8

    .line 307
    .local v19, "newByteValueAsLong":J
    not-long v0, v10

    and-long/2addr v0, v13

    shl-long v2, v19, v7

    or-long v21, v0, v2

    .line 308
    .local v21, "newLongValue":J
    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v13

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casAtLongIndex(IJJ)Z

    move-result v0

    .line 310
    .end local v13    # "currentLongValue":J
    .end local v15    # "byteValueAsLong":J
    .end local v19    # "newByteValueAsLong":J
    .end local v21    # "newLongValue":J
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 311
    return-wide v17

    .line 310
    :cond_0
    goto :goto_0
.end method

.method abstract casAtLongIndex(IJJ)Z
.end method

.method casAtShortIndex(ISS)Z
    .locals 24
    .param p1, "shortIndex"    # I
    .param p2, "expectedValue"    # S
    .param p3, "newValue"    # S

    .line 259
    shr-int/lit8 v6, p1, 0x2

    .line 260
    .local v6, "longIndex":I
    and-int/lit8 v0, p1, 0x3

    shl-int/lit8 v7, v0, 0x4

    .line 261
    .local v7, "shortShift":I
    const-wide/32 v8, 0xffff

    shl-long v0, v8, v7

    not-long v10, v0

    .line 262
    .local v10, "shortMask":J
    move/from16 v12, p3

    int-to-long v0, v12

    and-long v13, v0, v8

    .line 263
    .local v13, "newShortValueAsLong":J
    move/from16 v15, p2

    int-to-long v0, v15

    and-long v16, v0, v8

    .line 266
    .local v16, "expectedShortValueAsLong":J
    :goto_0
    move-object/from16 v4, p0

    invoke-virtual {v4, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtLongIndex(I)J

    move-result-wide v18

    .line 267
    .local v18, "currentLongValue":J
    shr-long v0, v18, v7

    and-long v20, v0, v8

    .line 268
    .local v20, "currentShortValueAsLong":J
    cmp-long v0, v20, v16

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_0
    and-long v0, v18, v10

    shl-long v2, v13, v7

    or-long v22, v0, v2

    .line 272
    .local v22, "newLongValue":J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v18

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casAtLongIndex(IJJ)Z

    move-result v0

    .line 274
    .end local v18    # "currentLongValue":J
    .end local v20    # "currentShortValueAsLong":J
    .end local v22    # "newLongValue":J
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 275
    const/4 v1, 0x1

    return v1

    .line 274
    :cond_1
    goto :goto_0
.end method

.method abstract casPopulatedLongLength(II)Z
.end method

.method abstract casPopulatedShortLength(II)Z
.end method

.method abstract clearContents()V
.end method

.method determineTopLevelShiftForVirtualLength(I)I
    .locals 6
    .param p1, "virtualLength"    # I

    .line 960
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 961
    .local v0, "sizeMagnitude":I
    add-int/lit8 v1, v0, -0x3

    .line 962
    .local v1, "eightsSizeMagnitude":I
    int-to-double v2, v1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x4

    .line 963
    .local v2, "multipleOfFourSizeMagnitude":I
    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 964
    add-int/lit8 v3, v2, -0x4

    add-int/lit8 v3, v3, 0x3

    .line 965
    .local v3, "topLevelShiftNeeded":I
    return v3
.end method

.method getAtByteIndex(I)B
    .locals 4
    .param p1, "byteIndex"    # I

    .line 279
    shr-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtLongIndex(I)J

    move-result-wide v0

    and-int/lit8 v2, p1, 0x7

    shl-int/lit8 v2, v2, 0x3

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method abstract getAtLongIndex(I)J
.end method

.method getAtShortIndex(I)S
    .locals 4
    .param p1, "shortIndex"    # I

    .line 243
    shr-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtLongIndex(I)J

    move-result-wide v0

    and-int/lit8 v2, p1, 0x3

    shl-int/lit8 v2, v2, 0x4

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method abstract getAtUnpackedIndex(I)J
.end method

.method getIndexAtShortIndex(I)S
    .locals 4
    .param p1, "shortIndex"    # I

    .line 247
    shr-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtLongIndex(I)J

    move-result-wide v0

    and-int/lit8 v2, p1, 0x3

    shl-int/lit8 v2, v2, 0x4

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x7fff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method getPackedIndex(IIZ)I
    .locals 23
    .param p1, "setNumber"    # I
    .param p2, "virtualIndex"    # I
    .param p3, "insertAsNeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/HdrHistogram/packedarray/ResizeException;
        }
    .end annotation

    .line 585
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    const/4 v0, 0x0

    move v11, v0

    .line 588
    .local v11, "byteIndex":I
    :goto_0
    if-ltz v8, :cond_8

    const/16 v0, 0x8

    if-ge v8, v0, :cond_8

    .line 589
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v9, v0, :cond_7

    .line 594
    add-int/lit8 v0, v8, 0x0

    .line 595
    .local v0, "entryPointerIndex":I
    invoke-direct {v7, v8, v10}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getRootEntry(IZ)I

    move-result v1

    .line 596
    .local v1, "entryIndex":I
    const/4 v14, -0x1

    if-nez v1, :cond_0

    .line 597
    return v14

    .line 601
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getTopLevelShift()I

    move-result v2

    move v15, v1

    move v6, v2

    .end local v1    # "entryIndex":I
    .local v6, "indexShift":I
    .local v15, "entryIndex":I
    :goto_1
    const/4 v1, 0x3

    if-lt v6, v1, :cond_6

    .line 602
    if-ne v6, v1, :cond_1

    move v1, v13

    goto :goto_2

    :cond_1
    move v1, v12

    :goto_2
    move/from16 v16, v1

    .line 604
    .local v16, "nextLevelIsLeaf":Z
    invoke-direct {v7, v15}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPackedSlotIndicators(I)I

    move-result v1

    move/from16 v17, v1

    .line 605
    .local v17, "packedSlotIndicators":I
    ushr-int v1, v9, v6

    and-int/lit8 v18, v1, 0xf

    .line 606
    .local v18, "slotBitNumber":I
    shl-int v19, v13, v18

    .line 607
    .local v19, "slotMask":I
    add-int/lit8 v1, v19, -0x1

    and-int v20, v17, v1

    .line 608
    .local v20, "slotsBelowBitNumber":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    move/from16 v21, v1

    .line 610
    .local v21, "slotNumber":I
    and-int v1, v17, v19

    if-nez v1, :cond_3

    .line 612
    if-nez v10, :cond_2

    .line 613
    return v14

    .line 617
    :cond_2
    move-object/from16 v1, p0

    move v2, v15

    move v3, v0

    move/from16 v4, v21

    move/from16 v5, v19

    move/from16 v22, v6

    .end local v6    # "indexShift":I
    .local v22, "indexShift":I
    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->expandEntry(IIIIZ)I

    move-result v1

    move v15, v1

    goto :goto_3

    .line 610
    .end local v22    # "indexShift":I
    .restart local v6    # "indexShift":I
    :cond_3
    move/from16 v22, v6

    .line 621
    .end local v6    # "indexShift":I
    .restart local v22    # "indexShift":I
    :goto_3
    add-int/lit8 v1, v15, 0x2

    add-int v0, v1, v21

    .line 623
    invoke-virtual {v7, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getIndexAtShortIndex(I)S

    move-result v1

    move v15, v1

    .line 624
    if-eqz v15, :cond_5

    .line 627
    if-nez v16, :cond_4

    invoke-direct {v7, v15}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPreviousVersionIndex(I)S

    move-result v1

    if-eqz v1, :cond_4

    .line 628
    invoke-direct {v7, v15}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->consolidateEntry(I)V

    .line 601
    .end local v16    # "nextLevelIsLeaf":Z
    .end local v17    # "packedSlotIndicators":I
    .end local v18    # "slotBitNumber":I
    .end local v19    # "slotMask":I
    .end local v20    # "slotsBelowBitNumber":I
    .end local v21    # "slotNumber":I
    :cond_4
    add-int/lit8 v6, v22, -0x4

    .end local v22    # "indexShift":I
    .restart local v6    # "indexShift":I
    goto :goto_1

    .line 625
    .end local v6    # "indexShift":I
    .restart local v16    # "nextLevelIsLeaf":Z
    .restart local v17    # "packedSlotIndicators":I
    .restart local v18    # "slotBitNumber":I
    .restart local v19    # "slotMask":I
    .restart local v20    # "slotsBelowBitNumber":I
    .restart local v21    # "slotNumber":I
    .restart local v22    # "indexShift":I
    :cond_5
    new-instance v1, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException;-><init>(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$1;)V

    .end local v11    # "byteIndex":I
    .end local p1    # "setNumber":I
    .end local p2    # "virtualIndex":I
    .end local p3    # "insertAsNeeded":Z
    throw v1

    .line 601
    .end local v16    # "nextLevelIsLeaf":Z
    .end local v17    # "packedSlotIndicators":I
    .end local v18    # "slotBitNumber":I
    .end local v19    # "slotMask":I
    .end local v20    # "slotsBelowBitNumber":I
    .end local v21    # "slotNumber":I
    .end local v22    # "indexShift":I
    .restart local v6    # "indexShift":I
    .restart local v11    # "byteIndex":I
    .restart local p1    # "setNumber":I
    .restart local p2    # "virtualIndex":I
    .restart local p3    # "insertAsNeeded":Z
    :cond_6
    move/from16 v22, v6

    .line 637
    .end local v6    # "indexShift":I
    shl-int/lit8 v1, v15, 0x3

    and-int/lit8 v2, v9, 0x7

    add-int/2addr v1, v2

    .line 641
    .end local v0    # "entryPointerIndex":I
    .end local v11    # "byteIndex":I
    .end local v15    # "entryIndex":I
    .local v1, "byteIndex":I
    move v11, v1

    goto :goto_4

    .line 590
    .end local v1    # "byteIndex":I
    .restart local v11    # "byteIndex":I
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Attempting access at index %d, beyond virtualLength %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 592
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-virtual/range {p0 .. p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    .line 591
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local v11    # "byteIndex":I
    .end local p1    # "setNumber":I
    .end local p2    # "virtualIndex":I
    .end local p3    # "insertAsNeeded":Z
    throw v0

    .line 639
    .restart local v11    # "byteIndex":I
    .restart local p1    # "setNumber":I
    .restart local p2    # "virtualIndex":I
    .restart local p3    # "insertAsNeeded":Z
    :catch_0
    move-exception v0

    goto :goto_4

    .line 588
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "byteIndex":I
    .end local p1    # "setNumber":I
    .end local p2    # "virtualIndex":I
    .end local p3    # "insertAsNeeded":Z
    throw v0
    :try_end_0
    .catch Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$RetryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .restart local v11    # "byteIndex":I
    .restart local p1    # "setNumber":I
    .restart local p2    # "virtualIndex":I
    .restart local p3    # "insertAsNeeded":Z
    :goto_4
    if-eqz v11, :cond_9

    .line 645
    return v11

    .line 643
    :cond_9
    goto/16 :goto_0
.end method

.method getPhysicalLength()I
    .locals 1

    .line 952
    iget v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->physicalLength:I

    return v0
.end method

.method getPopulatedByteLength()I
    .locals 1

    .line 990
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPopulatedShortLength()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getPopulatedLongLength()I
    .locals 1

    .line 986
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPopulatedShortLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method abstract getPopulatedShortLength()I
.end method

.method getTopLevelShift()I
    .locals 1

    .line 978
    iget v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->topLevelShift:I

    return v0
.end method

.method getVirtualLength()I
    .locals 1

    .line 956
    iget v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->virtualLength:I

    return v0
.end method

.method abstract incrementAndGetAtUnpackedIndex(I)J
.end method

.method init(I)V
    .locals 4
    .param p1, "virtualLength"    # I

    .line 162
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iput p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->virtualLength:I

    .line 165
    return-void

    .line 169
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getPopulatedShortLength()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casPopulatedShortLength(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 173
    add-int/lit8 v2, v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setAtShortIndex(IS)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setVirtualLength(I)V

    .line 176
    return-void

    .line 169
    :cond_2
    goto :goto_0
.end method

.method isPacked()Z
    .locals 1

    .line 948
    iget-boolean v0, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked:Z

    return v0
.end method

.method abstract lazySetAtLongIndex(IJ)V
.end method

.method abstract lazysetAtUnpackedIndex(IJ)V
.end method

.method abstract length()I
.end method

.method nonZeroValues()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/HdrHistogram/packedarray/IterationValue;",
            ">;"
        }
    .end annotation

    .line 930
    new-instance v0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$1;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext$1;-><init>(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V

    return-object v0
.end method

.method populateEquivalentEntriesWithZerosFromOther(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;)V
    .locals 8
    .param p1, "other"    # Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;

    .line 682
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getVirtualLength()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 685
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 686
    add-int/lit8 v1, v0, 0x0

    invoke-virtual {p1, v1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtShortIndex(I)S

    move-result v1

    .line 687
    .local v1, "otherEntryIndex":I
    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_3

    .line 688
    :cond_0
    add-int/lit8 v3, v0, 0x0

    .line 689
    .local v3, "entryIndexPointer":I
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getTopLevelShift()I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getTopLevelShift()I

    move-result v4

    if-le v0, v4, :cond_2

    .line 693
    const/4 v4, 0x3

    .line 694
    .local v4, "sizeOfEntry":I
    const/4 v5, 0x0

    .line 697
    .local v5, "newEntryIndex":I
    :cond_1
    :try_start_0
    invoke-direct {p0, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->newEntry(I)I

    move-result v6
    :try_end_0
    .catch Lorg/HdrHistogram/packedarray/ResizeException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 700
    goto :goto_2

    .line 698
    :catch_0
    move-exception v6

    .line 699
    .local v6, "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    invoke-virtual {v6}, Lorg/HdrHistogram/packedarray/ResizeException;->getNewSize()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->resizeArray(I)V

    .line 702
    .end local v6    # "ex":Lorg/HdrHistogram/packedarray/ResizeException;
    :goto_2
    if-eqz v5, :cond_1

    .line 705
    int-to-short v6, v5

    invoke-virtual {p0, v3, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setAtShortIndex(IS)V

    .line 707
    invoke-direct {p0, v5, v2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setPackedSlotIndicators(IS)V

    .line 708
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setPreviousVersionIndex(IS)V

    .line 709
    add-int/lit8 v3, v5, 0x2

    .line 689
    .end local v4    # "sizeOfEntry":I
    .end local v5    # "newEntryIndex":I
    add-int/lit8 v0, v0, -0x4

    goto :goto_1

    .line 711
    :cond_2
    nop

    .line 712
    invoke-virtual {p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getTopLevelShift()I

    move-result v4

    .line 711
    invoke-direct {p0, p1, v1, v3, v4}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->copyEntriesAtLevelFromOther(Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;III)V

    .line 685
    .end local v1    # "otherEntryIndex":I
    .end local v3    # "entryIndexPointer":I
    :goto_3
    add-int/2addr v0, v2

    goto :goto_0

    .line 714
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 683
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot populate array of smaller virtrual length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract resizeArray(I)V
.end method

.method setAtByteIndex(IB)V
    .locals 13
    .param p1, "byteIndex"    # I
    .param p2, "value"    # B

    .line 283
    shr-int/lit8 v7, p1, 0x3

    .line 284
    .local v7, "longIndex":I
    and-int/lit8 v0, p1, 0x7

    shl-int/lit8 v8, v0, 0x3

    .line 285
    .local v8, "byteShift":I
    const-wide/16 v0, 0xff

    shl-long v9, v0, v8

    .line 286
    .local v9, "byteMask":J
    int-to-long v2, p2

    and-long v11, v2, v0

    .line 287
    .local v11, "byteValueAsLong":J
    move-object v0, p0

    move v1, v7

    move-wide v2, v11

    move-wide v4, v9

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setValuePart(IJJI)V

    .line 288
    return-void
.end method

.method setAtShortIndex(IS)V
    .locals 13
    .param p1, "shortIndex"    # I
    .param p2, "value"    # S

    .line 251
    shr-int/lit8 v7, p1, 0x2

    .line 252
    .local v7, "longIndex":I
    and-int/lit8 v0, p1, 0x3

    shl-int/lit8 v8, v0, 0x4

    .line 253
    .local v8, "shortShift":I
    const-wide/32 v0, 0xffff

    shl-long v9, v0, v8

    .line 254
    .local v9, "shortMask":J
    int-to-long v2, p2

    and-long v11, v2, v0

    .line 255
    .local v11, "shortValueAsLong":J
    move-object v0, p0

    move v1, v7

    move-wide v2, v11

    move-wide v4, v9

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setValuePart(IJJI)V

    .line 256
    return-void
.end method

.method abstract setAtUnpackedIndex(IJ)V
.end method

.method setValuePart(IJJI)V
    .locals 12
    .param p1, "longIndex"    # I
    .param p2, "valuePartAsLong"    # J
    .param p4, "valuePartMask"    # J
    .param p6, "valuePartShift"    # I

    .line 235
    :goto_0
    invoke-virtual {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getAtLongIndex(I)J

    move-result-wide v6

    .line 236
    .local v6, "currentLongValue":J
    move-wide/from16 v8, p4

    not-long v0, v8

    and-long/2addr v0, v6

    shl-long v2, p2, p6

    or-long v10, v0, v2

    .line 237
    .local v10, "newLongValue":J
    move-object v0, p0

    move v1, p1

    move-wide v2, v6

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->casAtLongIndex(IJJ)Z

    move-result v0

    .line 239
    .end local v6    # "currentLongValue":J
    .end local v10    # "newLongValue":J
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 240
    return-void

    .line 239
    :cond_0
    goto :goto_0
.end method

.method setVirtualLength(I)V
    .locals 2
    .param p1, "virtualLength"    # I

    .line 969
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {p0, p1}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->determineTopLevelShiftForVirtualLength(I)I

    move-result v0

    .line 973
    .local v0, "newTopLevelShift":I
    invoke-direct {p0, v0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->setTopLevelShift(I)V

    .line 974
    iput p1, p0, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->virtualLength:I

    .line 975
    return-void

    .line 970
    .end local v0    # "newTopLevelShift":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should never be adjusting the virtual size of a non-packed context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1073
    const-string v0, "PackedArrayContext:\n"

    .line 1074
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->isPacked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Context is unpacked:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->unpackedToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1077
    :cond_0
    const/4 v1, 0x0

    .local v1, "setNumber":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 1079
    add-int/lit8 v2, v1, 0x0

    .line 1080
    .local v2, "entryPointerIndex":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getIndexAtShortIndex(I)S

    move-result v5

    .line 1081
    .local v5, "entryIndex":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Set %d: root = %d \n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1082
    if-nez v5, :cond_1

    goto :goto_1

    .line 1083
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->getTopLevelShift()I

    move-result v7

    const/4 v8, 0x4

    invoke-direct {p0, v5, v7, v8}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->nonLeafEntryToString(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 1086
    .end local v2    # "entryPointerIndex":I
    .end local v5    # "entryIndex":I
    goto :goto_1

    .line 1084
    :catch_0
    move-exception v2

    .line 1085
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v4, "Exception thrown in set %d\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1088
    .end local v1    # "setNumber":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/HdrHistogram/packedarray/AbstractPackedArrayContext;->recordedValuesToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    return-object v0
.end method

.method abstract unpackedToString()Ljava/lang/String;
.end method
