.class public Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;
.super Lcom/sleepycat/je/tree/INKeyRep;
.source "INKeyRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/INKeyRep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaxKeySize"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LENGTH_BYTES:I = 0x1

.field public static final MAX_KEYS:I = 0x100

.field private static final NULL_KEY:B = 0x7ft


# instance fields
.field private final fixedKeyLen:S

.field private final keys:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 399
    const-class v0, Lcom/sleepycat/je/tree/INKeyRep;

    return-void
.end method

.method public constructor <init>(IS)V
    .locals 3
    .param p1, "nodeMaxEntries"    # I
    .param p2, "maxKeyLen"    # S

    .line 420
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INKeyRep;-><init>()V

    .line 422
    const/16 v0, 0xff

    if-ge p2, v0, :cond_2

    .line 423
    add-int/lit8 v0, p2, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    .line 424
    mul-int/2addr v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 427
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->set(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v1

    .line 428
    .local v1, "rep":Lcom/sleepycat/je/tree/INKeyRep;
    if-ne v1, p0, :cond_0

    .line 426
    .end local v1    # "rep":Lcom/sleepycat/je/tree/INKeyRep;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    .restart local v1    # "rep":Lcom/sleepycat/je/tree/INKeyRep;
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 430
    .end local v0    # "i":I
    .end local v1    # "rep":Lcom/sleepycat/je/tree/INKeyRep;
    :cond_1
    return-void

    .line 422
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 433
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INKeyRep;-><init>()V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    .line 435
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    .line 436
    return-void
.end method

.method private constructor <init>([BS)V
    .locals 0
    .param p1, "keys"    # [B
    .param p2, "fixedKeyLen"    # S

    .line 438
    invoke-direct {p0}, Lcom/sleepycat/je/tree/INKeyRep;-><init>()V

    .line 439
    iput-object p1, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    .line 440
    iput-short p2, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    .line 441
    return-void
.end method

.method static synthetic access$100(II)J
    .locals 2
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 399
    invoke-static {p0, p1}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->calculateMemorySize(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static calculateMemorySize(II)J
    .locals 2
    .param p0, "maxKeys"    # I
    .param p1, "maxKeySize"    # I

    .line 711
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->MAX_KEY_SIZE_KEYVALS_OVERHEAD:I

    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, p0

    .line 712
    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 711
    return-wide v0
.end method

.method private compareSuffixes([BIIIZ)I
    .locals 8
    .param p1, "searchKey"    # [B
    .param p2, "searchKeyOff"    # I
    .param p3, "searchKeyLen"    # I
    .param p4, "idx"    # I
    .param p5, "embeddedData"    # Z

    .line 667
    iget-short v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    mul-int/2addr v0, p4

    .line 668
    .local v0, "myKeyOff":I
    const/4 v1, 0x0

    .line 670
    .local v1, "myKeyLen":I
    iget-object v2, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    aget-byte v3, v2, v0

    const/16 v4, 0x7f

    if-eq v3, v4, :cond_0

    .line 672
    add-int/lit16 v1, v3, 0x80

    .line 674
    add-int/lit8 v0, v0, 0x1

    .line 676
    if-eqz p5, :cond_1

    .line 677
    invoke-static {v2, v0, v1}, Lcom/sleepycat/je/dbi/DupKeyData;->getKeyLength([BII)I

    move-result v1

    goto :goto_0

    .line 681
    :cond_0
    if-nez p5, :cond_2

    .line 682
    add-int/lit8 v0, v0, 0x1

    .line 685
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([BII[BII)I

    move-result v2

    return v2

    .line 681
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private expandToDefaultRep(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep$Default;
    .locals 6
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 508
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->length()I

    move-result v0

    .line 509
    .local v0, "capacity":I
    new-instance v1, Lcom/sleepycat/je/tree/INKeyRep$Default;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/tree/INKeyRep$Default;-><init>(I)V

    .line 511
    .local v1, "newRep":Lcom/sleepycat/je/tree/INKeyRep$Default;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 512
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->get(I)[B

    move-result-object v3

    .line 513
    .local v3, "k":[B
    invoke-virtual {v1, v2, v3, p1}, Lcom/sleepycat/je/tree/INKeyRep$Default;->set(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v4

    .line 514
    .local v4, "rep":Lcom/sleepycat/je/tree/INKeyRep;
    if-ne v4, v1, :cond_0

    .line 511
    .end local v3    # "k":[B
    .end local v4    # "rep":Lcom/sleepycat/je/tree/INKeyRep;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    .restart local v3    # "k":[B
    .restart local v4    # "rep":Lcom/sleepycat/je/tree/INKeyRep;
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 517
    .end local v2    # "i":I
    .end local v3    # "k":[B
    .end local v4    # "rep":Lcom/sleepycat/je/tree/INKeyRep;
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->noteRepChange(Lcom/sleepycat/je/tree/INArrayRep;Lcom/sleepycat/je/tree/IN;)V

    .line 518
    return-object v1
.end method


# virtual methods
.method public accountsForKeyByteMemUsage()Z
    .locals 1

    .line 718
    const/4 v0, 0x1

    return v0
.end method

.method public calculateMemorySize()J
    .locals 2

    .line 706
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->MAX_KEY_SIZE_KEYVALS_OVERHEAD:I

    iget-object v1, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    array-length v1, v1

    .line 707
    invoke-static {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 706
    return-wide v0
.end method

.method public compact(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 0
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 701
    return-object p0
.end method

.method public bridge synthetic compact(Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 399
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->compact(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object p1

    return-object p1
.end method

.method public compareKeys([B[BIZLjava/util/Comparator;)I
    .locals 15
    .param p1, "searchKey"    # [B
    .param p2, "prefix"    # [B
    .param p3, "idx"    # I
    .param p4, "embeddedData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BIZ",
            "Ljava/util/Comparator<",
            "[B>;)I"
        }
    .end annotation

    .line 630
    .local p5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    if-eqz v8, :cond_0

    .line 631
    move-object v9, p0

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual {p0, v7, v10, v11}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->getFullKey([BIZ)[B

    move-result-object v0

    .line 632
    .local v0, "myKey":[B
    invoke-static {v6, v0, v8}, Lcom/sleepycat/je/tree/Key;->compareKeys([B[BLjava/util/Comparator;)I

    move-result v1

    return v1

    .line 635
    .end local v0    # "myKey":[B
    :cond_0
    move-object v9, p0

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v12, 0x0

    .line 637
    .local v12, "cmp":I
    if-eqz v7, :cond_3

    array-length v0, v7

    if-nez v0, :cond_1

    goto :goto_0

    .line 643
    :cond_1
    const/4 v1, 0x0

    array-length v0, v6

    array-length v2, v7

    .line 644
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    array-length v5, v7

    .line 643
    move-object/from16 v0, p1

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([BII[BII)I

    move-result v12

    .line 647
    if-nez v12, :cond_2

    .line 649
    array-length v13, v7

    .line 650
    .local v13, "searchKeyOff":I
    array-length v0, v6

    array-length v1, v7

    sub-int v14, v0, v1

    .line 652
    .local v14, "searchKeyLen":I
    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->compareSuffixes([BIIIZ)I

    move-result v0

    return v0

    .line 657
    .end local v13    # "searchKeyOff":I
    .end local v14    # "searchKeyLen":I
    :cond_2
    return v12

    .line 639
    :cond_3
    :goto_0
    const/4 v2, 0x0

    array-length v3, v6

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->compareSuffixes([BIIIZ)I

    move-result v0

    return v0
.end method

.method public copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 692
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    iget-short v1, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    mul-int v2, p1, v1

    mul-int v3, p2, v1

    mul-int/2addr v1, p3

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 695
    return-object p0
.end method

.method public bridge synthetic copy(IIILcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 399
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->copy(IIILcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 399
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->get(I)[B

    move-result-object p1

    return-object p1
.end method

.method public get(I)[B
    .locals 5
    .param p1, "idx"    # I

    .line 534
    iget-short v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    mul-int/2addr v0, p1

    .line 536
    .local v0, "slotOff":I
    iget-object v1, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    aget-byte v2, v1, v0

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_0

    .line 537
    const/4 v1, 0x0

    return-object v1

    .line 540
    :cond_0
    add-int/lit16 v2, v2, 0x80

    .line 542
    .local v2, "slotLen":I
    add-int/lit8 v0, v0, 0x1

    .line 544
    new-array v3, v2, [B

    .line 545
    .local v3, "info":[B
    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    return-object v3
.end method

.method public getData(I)[B
    .locals 4
    .param p1, "idx"    # I

    .line 552
    iget-short v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    mul-int/2addr v0, p1

    .line 554
    .local v0, "slotOff":I
    iget-object v1, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    aget-byte v2, v1, v0

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_0

    .line 556
    add-int/lit16 v2, v2, 0x80

    .line 558
    .local v2, "slotLen":I
    add-int/lit8 v0, v0, 0x1

    .line 560
    invoke-static {v1, v0, v2}, Lcom/sleepycat/je/dbi/DupKeyData;->getData([BII)[B

    move-result-object v1

    return-object v1

    .line 554
    .end local v2    # "slotLen":I
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getFullKey([BIZ)[B
    .locals 6
    .param p1, "prefix"    # [B
    .param p2, "idx"    # I
    .param p3, "embeddedData"    # Z

    .line 592
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 596
    :cond_0
    iget-short v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    mul-int/2addr v0, p2

    .line 598
    .local v0, "slotOff":I
    iget-object v1, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    aget-byte v2, v1, v0

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_2

    .line 599
    if-nez p3, :cond_1

    .line 600
    return-object p1

    .line 599
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 603
    :cond_2
    add-int/lit16 v2, v2, 0x80

    .line 605
    .local v2, "slotLen":I
    add-int/lit8 v0, v0, 0x1

    .line 607
    array-length v3, p1

    .line 610
    .local v3, "prefixLen":I
    if-eqz p3, :cond_3

    .line 611
    invoke-static {v1, v0, v2}, Lcom/sleepycat/je/dbi/DupKeyData;->getKeyLength([BII)I

    move-result v1

    .local v1, "suffixLen":I
    goto :goto_0

    .line 613
    .end local v1    # "suffixLen":I
    :cond_3
    move v1, v2

    .line 616
    .restart local v1    # "suffixLen":I
    :goto_0
    add-int v4, v1, v3

    new-array v4, v4, [B

    .line 617
    .local v4, "key":[B
    const/4 v5, 0x0

    invoke-static {p1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    iget-object v5, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    invoke-static {v5, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    return-object v4

    .line 593
    .end local v0    # "slotOff":I
    .end local v1    # "suffixLen":I
    .end local v2    # "slotLen":I
    .end local v3    # "prefixLen":I
    .end local v4    # "key":[B
    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->getKey(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getKey(IZ)[B
    .locals 5
    .param p1, "idx"    # I
    .param p2, "embeddedData"    # Z

    .line 566
    iget-short v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    mul-int/2addr v0, p1

    .line 568
    .local v0, "slotOff":I
    iget-object v1, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    aget-byte v2, v1, v0

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_1

    .line 569
    if-nez p2, :cond_0

    .line 570
    sget-object v1, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    return-object v1

    .line 569
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 573
    :cond_1
    add-int/lit16 v2, v2, 0x80

    .line 575
    .local v2, "slotLen":I
    add-int/lit8 v0, v0, 0x1

    .line 577
    if-eqz p2, :cond_2

    .line 578
    invoke-static {v1, v0, v2}, Lcom/sleepycat/je/dbi/DupKeyData;->getKey([BII)[B

    move-result-object v1

    return-object v1

    .line 581
    :cond_2
    new-array v3, v2, [B

    .line 582
    .local v3, "key":[B
    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    return-object v3
.end method

.method public getType()Lcom/sleepycat/je/tree/INKeyRep$Type;
    .locals 1

    .line 452
    sget-object v0, Lcom/sleepycat/je/tree/INKeyRep$Type;->MAX_KEY_SIZE:Lcom/sleepycat/je/tree/INKeyRep$Type;

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/Object;
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->getType()Lcom/sleepycat/je/tree/INKeyRep$Type;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    array-length v0, v0

    iget-short v1, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    div-int/2addr v0, v1

    return v0
.end method

.method public resize(I)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 4
    .param p1, "capacity"    # I

    .line 445
    new-instance v0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;

    iget-object v1, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    iget-short v2, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    mul-int/2addr v2, p1

    .line 446
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget-short v2, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;-><init>([BS)V

    .line 445
    return-object v0
.end method

.method public bridge synthetic resize(I)Ljava/lang/Object;
    .locals 0

    .line 399
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->resize(I)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object p1

    return-object p1
.end method

.method public set(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 4
    .param p1, "idx"    # I
    .param p2, "key"    # [B
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 463
    iget-short v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    mul-int v1, p1, v0

    .line 465
    .local v1, "slotOff":I
    if-nez p2, :cond_0

    .line 466
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    .line 467
    return-object p0

    .line 470
    :cond_0
    array-length v2, p2

    if-lt v2, v0, :cond_1

    .line 471
    invoke-direct {p0, p3}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->expandToDefaultRep(Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep$Default;

    move-result-object v0

    .line 472
    .local v0, "newRep":Lcom/sleepycat/je/tree/INKeyRep$Default;
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/je/tree/INKeyRep$Default;->set(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v2

    return-object v2

    .line 475
    .end local v0    # "newRep":Lcom/sleepycat/je/tree/INKeyRep$Default;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    array-length v2, p2

    add-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 477
    add-int/lit8 v1, v1, 0x1

    .line 479
    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    return-object p0
.end method

.method public set(I[B[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 2
    .param p1, "idx"    # I
    .param p2, "key"    # [B
    .param p3, "data"    # [B
    .param p4, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 487
    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {p2, p3}, Lcom/sleepycat/je/dbi/DupKeyData;->combine([B[B)[B

    move-result-object v0

    .line 493
    .local v0, "twoPartKey":[B
    invoke-virtual {p0, p1, v0, p4}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->set(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v1

    return-object v1

    .line 488
    .end local v0    # "twoPartKey":[B
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->set(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;Lcom/sleepycat/je/tree/IN;)Ljava/lang/Object;
    .locals 0

    .line 399
    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->set(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object p1

    return-object p1
.end method

.method public setData(I[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;
    .locals 1
    .param p1, "idx"    # I
    .param p2, "data"    # [B
    .param p3, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 503
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->getKey(IZ)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->set(I[B[BLcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/INKeyRep;

    move-result-object v0

    return-object v0
.end method

.method public size(I)I
    .locals 3
    .param p1, "idx"    # I

    .line 524
    iget-short v0, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->fixedKeyLen:S

    mul-int/2addr v0, p1

    .line 526
    .local v0, "slotOff":I
    iget-object v1, p0, Lcom/sleepycat/je/tree/INKeyRep$MaxKeySize;->keys:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_0

    .line 528
    add-int/lit16 v1, v1, 0x80

    return v1

    .line 526
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method updateCacheStats(ZLcom/sleepycat/je/evictor/Evictor;)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "evictor"    # Lcom/sleepycat/je/evictor/Evictor;

    .line 723
    if-eqz p1, :cond_0

    .line 724
    invoke-virtual {p2}, Lcom/sleepycat/je/evictor/Evictor;->getNINCompactKey()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0

    .line 726
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/evictor/Evictor;->getNINCompactKey()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 728
    :goto_0
    return-void
.end method
