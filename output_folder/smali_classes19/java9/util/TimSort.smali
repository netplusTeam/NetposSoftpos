.class Ljava9/util/TimSort;
.super Ljava/lang/Object;
.source "TimSort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private tmpBase:I

.field private tmpLen:I


# direct methods
.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V
    .locals 5
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;[TT;II)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Ljava9/util/TimSort;, "Ljava9/util/TimSort<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p3, "work":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x7

    iput v0, p0, Ljava9/util/TimSort;->minGallop:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/TimSort;->stackSize:I

    .line 148
    iput-object p1, p0, Ljava9/util/TimSort;->a:[Ljava/lang/Object;

    .line 149
    iput-object p2, p0, Ljava9/util/TimSort;->c:Ljava/util/Comparator;

    .line 152
    array-length v1, p1

    .line 153
    .local v1, "len":I
    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    ushr-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x100

    .line 155
    .local v2, "tlen":I
    :goto_0
    if-eqz p3, :cond_2

    if-lt p5, v2, :cond_2

    add-int v3, p4, v2

    array-length v4, p3

    if-le v3, v4, :cond_1

    goto :goto_1

    .line 164
    :cond_1
    iput-object p3, p0, Ljava9/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 165
    iput p4, p0, Ljava9/util/TimSort;->tmpBase:I

    .line 166
    iput p5, p0, Ljava9/util/TimSort;->tmpLen:I

    goto :goto_2

    .line 157
    :cond_2
    :goto_1
    nop

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 159
    .local v3, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v3, p0, Ljava9/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 160
    iput v0, p0, Ljava9/util/TimSort;->tmpBase:I

    .line 161
    iput v2, p0, Ljava9/util/TimSort;->tmpLen:I

    .line 162
    .end local v3    # "newArray":[Ljava/lang/Object;, "[TT;"
    nop

    .line 183
    :goto_2
    const/16 v0, 0x78

    if-ge v1, v0, :cond_3

    const/4 v0, 0x5

    goto :goto_3

    :cond_3
    const/16 v0, 0x606

    if-ge v1, v0, :cond_4

    const/16 v0, 0xa

    goto :goto_3

    :cond_4
    const v0, 0x1d16f

    if-ge v1, v0, :cond_5

    const/16 v0, 0x18

    goto :goto_3

    :cond_5
    const/16 v0, 0x31

    .line 186
    .local v0, "stackLen":I
    :goto_3
    new-array v3, v0, [I

    iput-object v3, p0, Ljava9/util/TimSort;->runBase:[I

    .line 187
    new-array v3, v0, [I

    iput-object v3, p0, Ljava9/util/TimSort;->runLen:[I

    .line 188
    return-void
.end method

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 6
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 278
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-ne p3, p1, :cond_0

    .line 279
    add-int/lit8 p3, p3, 0x1

    .line 280
    :cond_0
    :goto_0
    if-ge p3, p2, :cond_3

    .line 281
    aget-object v0, p0, p3

    .line 284
    .local v0, "pivot":Ljava/lang/Object;, "TT;"
    move v1, p1

    .line 285
    .local v1, "left":I
    move v2, p3

    .line 292
    .local v2, "right":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 293
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 294
    .local v3, "mid":I
    aget-object v4, p0, v3

    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 295
    move v2, v3

    goto :goto_2

    .line 297
    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 298
    .end local v3    # "mid":I
    :goto_2
    goto :goto_1

    .line 307
    :cond_2
    sub-int v3, p3, v1

    .line 309
    .local v3, "n":I
    packed-switch v3, :pswitch_data_0

    .line 313
    add-int/lit8 v4, v1, 0x1

    invoke-static {p0, v1, p0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 310
    :pswitch_0
    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    aput-object v5, p0, v4

    .line 311
    :pswitch_1
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p0, v1

    aput-object v5, p0, v4

    .line 312
    nop

    .line 315
    :goto_3
    aput-object v0, p0, v1

    .line 280
    .end local v0    # "pivot":Ljava/lang/Object;, "TT;"
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "n":I
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 317
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 3
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 346
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    add-int/lit8 v0, p1, 0x1

    .line 347
    .local v0, "runHi":I
    if-ne v0, p2, :cond_0

    .line 348
    const/4 v1, 0x1

    return v1

    .line 351
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v0, p0, v0

    aget-object v2, p0, p1

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    .line 352
    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {p0, p1, v1}, Ljava9/util/TimSort;->reverseRange([Ljava/lang/Object;II)V

    goto :goto_2

    .line 356
    :cond_2
    :goto_1
    if-ge v1, p2, :cond_3

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 360
    :cond_3
    :goto_2
    sub-int v0, v1, p1

    return v0
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "minCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 892
    .local p0, "this":Ljava9/util/TimSort;, "Ljava9/util/TimSort<TT;>;"
    iget v0, p0, Ljava9/util/TimSort;->tmpLen:I

    if-ge v0, p1, :cond_1

    .line 894
    move v0, p1

    .line 895
    .local v0, "newSize":I
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 896
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 897
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 898
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 899
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 900
    add-int/lit8 v0, v0, 0x1

    .line 902
    if-gez v0, :cond_0

    .line 903
    move v0, p1

    goto :goto_0

    .line 905
    :cond_0
    iget-object v1, p0, Ljava9/util/TimSort;->a:[Ljava/lang/Object;

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 908
    :goto_0
    iget-object v1, p0, Ljava9/util/TimSort;->a:[Ljava/lang/Object;

    .line 909
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 910
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v1, p0, Ljava9/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 911
    iput v0, p0, Ljava9/util/TimSort;->tmpLen:I

    .line 912
    const/4 v2, 0x0

    iput v2, p0, Ljava9/util/TimSort;->tmpBase:I

    .line 914
    .end local v0    # "newSize":I
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1
    iget-object v0, p0, Ljava9/util/TimSort;->tmp:[Ljava/lang/Object;

    return-object v0
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 4
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 532
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    .line 533
    .local v0, "lastOfs":I
    const/4 v1, 0x1

    .line 534
    .local v1, "ofs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p5, p0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3

    .line 536
    sub-int v2, p3, p4

    .line 537
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    .line 538
    move v0, v1

    .line 539
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 540
    if-gtz v1, :cond_0

    .line 541
    move v1, v2

    goto :goto_0

    .line 543
    :cond_1
    if-le v1, v2, :cond_2

    .line 544
    move v1, v2

    .line 547
    :cond_2
    add-int/2addr v0, p4

    .line 548
    add-int/2addr v1, p4

    .line 549
    .end local v2    # "maxOfs":I
    goto :goto_2

    .line 551
    :cond_3
    add-int/lit8 v2, p4, 0x1

    .line 552
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_1
    if-ge v1, v2, :cond_5

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_5

    .line 553
    move v0, v1

    .line 554
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 555
    if-gtz v1, :cond_4

    .line 556
    move v1, v2

    goto :goto_1

    .line 558
    :cond_5
    if-le v1, v2, :cond_6

    .line 559
    move v1, v2

    .line 562
    :cond_6
    move v3, v0

    .line 563
    .local v3, "tmp":I
    sub-int v0, p4, v1

    .line 564
    sub-int v1, p4, v3

    .line 572
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 573
    :goto_3
    if-ge v0, v1, :cond_8

    .line 574
    sub-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 576
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_7

    .line 577
    add-int/lit8 v0, v2, 0x1

    goto :goto_4

    .line 579
    :cond_7
    move v1, v2

    .line 580
    .end local v2    # "m":I
    :goto_4
    goto :goto_3

    .line 582
    :cond_8
    return v1
.end method

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 4
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 601
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x1

    .line 602
    .local v0, "ofs":I
    const/4 v1, 0x0

    .line 603
    .local v1, "lastOfs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p5, p0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    .line 605
    add-int/lit8 v2, p4, 0x1

    .line 606
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v0, v2, :cond_1

    add-int v3, p2, p4

    sub-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    .line 607
    move v1, v0

    .line 608
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 609
    if-gtz v0, :cond_0

    .line 610
    move v0, v2

    goto :goto_0

    .line 612
    :cond_1
    if-le v0, v2, :cond_2

    .line 613
    move v0, v2

    .line 616
    :cond_2
    move v3, v1

    .line 617
    .local v3, "tmp":I
    sub-int v1, p4, v0

    .line 618
    sub-int v0, p4, v3

    .line 619
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    goto :goto_2

    .line 621
    :cond_3
    sub-int v2, p3, p4

    .line 622
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_1
    if-ge v0, v2, :cond_5

    add-int v3, p2, p4

    add-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 623
    move v1, v0

    .line 624
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 625
    if-gtz v0, :cond_4

    .line 626
    move v0, v2

    goto :goto_1

    .line 628
    :cond_5
    if-le v0, v2, :cond_6

    .line 629
    move v0, v2

    .line 632
    :cond_6
    add-int/2addr v1, p4

    .line 633
    add-int/2addr v0, p4

    .line 641
    .end local v2    # "maxOfs":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 642
    :goto_3
    if-ge v1, v0, :cond_8

    .line 643
    sub-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    .line 645
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_7

    .line 646
    move v0, v2

    goto :goto_4

    .line 648
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .line 649
    .end local v2    # "m":I
    :goto_4
    goto :goto_3

    .line 651
    :cond_8
    return v0
.end method

.method private mergeAt(I)V
    .locals 18
    .param p1, "i"    # I

    .line 468
    .local p0, "this":Ljava9/util/TimSort;, "Ljava9/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Ljava9/util/TimSort;->runBase:[I

    aget v9, v2, v1

    .line 469
    .local v9, "base1":I
    iget-object v3, v0, Ljava9/util/TimSort;->runLen:[I

    aget v10, v3, v1

    .line 470
    .local v10, "len1":I
    add-int/lit8 v4, v1, 0x1

    aget v15, v2, v4

    .line 471
    .local v15, "base2":I
    add-int/lit8 v4, v1, 0x1

    aget v17, v3, v4

    .line 478
    .local v17, "len2":I
    add-int v4, v10, v17

    aput v4, v3, v1

    .line 479
    iget v4, v0, Ljava9/util/TimSort;->stackSize:I

    add-int/lit8 v5, v4, -0x3

    if-ne v1, v5, :cond_0

    .line 480
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v1, 0x2

    aget v6, v2, v6

    aput v6, v2, v5

    .line 481
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v5, v1, 0x2

    aget v5, v3, v5

    aput v5, v3, v2

    .line 483
    :cond_0
    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Ljava9/util/TimSort;->stackSize:I

    .line 489
    iget-object v4, v0, Ljava9/util/TimSort;->a:[Ljava/lang/Object;

    aget-object v3, v4, v15

    const/4 v7, 0x0

    iget-object v8, v0, Ljava9/util/TimSort;->c:Ljava/util/Comparator;

    move v5, v9

    move v6, v10

    invoke-static/range {v3 .. v8}, Ljava9/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    .line 491
    .local v2, "k":I
    add-int/2addr v9, v2

    .line 492
    sub-int/2addr v10, v2

    .line 493
    if-nez v10, :cond_1

    .line 494
    return-void

    .line 500
    :cond_1
    iget-object v12, v0, Ljava9/util/TimSort;->a:[Ljava/lang/Object;

    add-int v3, v9, v10

    add-int/lit8 v3, v3, -0x1

    aget-object v11, v12, v3

    add-int/lit8 v3, v17, -0x1

    iget-object v4, v0, Ljava9/util/TimSort;->c:Ljava/util/Comparator;

    move v13, v15

    move/from16 v14, v17

    move v5, v15

    .end local v15    # "base2":I
    .local v5, "base2":I
    move v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Ljava9/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v3

    .line 502
    .end local v17    # "len2":I
    .local v3, "len2":I
    if-nez v3, :cond_2

    .line 503
    return-void

    .line 506
    :cond_2
    if-gt v10, v3, :cond_3

    .line 507
    invoke-direct {v0, v9, v10, v5, v3}, Ljava9/util/TimSort;->mergeLo(IIII)V

    goto :goto_0

    .line 509
    :cond_3
    invoke-direct {v0, v9, v10, v5, v3}, Ljava9/util/TimSort;->mergeHi(IIII)V

    .line 510
    :goto_0
    return-void
.end method

.method private mergeCollapse()V
    .locals 6

    .line 434
    .local p0, "this":Ljava9/util/TimSort;, "Ljava9/util/TimSort<TT;>;"
    :goto_0
    iget v0, p0, Ljava9/util/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 435
    add-int/lit8 v0, v0, -0x2

    .line 436
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v2, p0, Ljava9/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    aget v4, v2, v0

    add-int/lit8 v5, v0, 0x1

    aget v2, v2, v5

    add-int/2addr v4, v2

    if-le v3, v4, :cond_1

    :cond_0
    if-le v0, v1, :cond_2

    iget-object v1, p0, Ljava9/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    aget v3, v1, v0

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    add-int/2addr v3, v1

    if-gt v2, v3, :cond_2

    .line 438
    :cond_1
    iget-object v1, p0, Ljava9/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_3

    .line 439
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 440
    :cond_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Ljava9/util/TimSort;->runLen:[I

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-le v2, v1, :cond_3

    .line 441
    goto :goto_2

    .line 443
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Ljava9/util/TimSort;->mergeAt(I)V

    .line 444
    .end local v0    # "n":I
    goto :goto_0

    .line 445
    :cond_4
    :goto_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    .line 452
    .local p0, "this":Ljava9/util/TimSort;, "Ljava9/util/TimSort<TT;>;"
    :goto_0
    iget v0, p0, Ljava9/util/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 453
    add-int/lit8 v0, v0, -0x2

    .line 454
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Ljava9/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_0

    .line 455
    add-int/lit8 v0, v0, -0x1

    .line 456
    :cond_0
    invoke-direct {p0, v0}, Ljava9/util/TimSort;->mergeAt(I)V

    .line 457
    .end local v0    # "n":I
    goto :goto_0

    .line 458
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 23
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 781
    .local p0, "this":Ljava9/util/TimSort;, "Ljava9/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    iget-object v8, v0, Ljava9/util/TimSort;->a:[Ljava/lang/Object;

    .line 782
    .local v8, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {v0, v2}, Ljava9/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v9

    .line 783
    .local v9, "tmp":[Ljava/lang/Object;, "[TT;"
    iget v10, v0, Ljava9/util/TimSort;->tmpBase:I

    .line 784
    .local v10, "tmpBase":I
    invoke-static {v8, v1, v9, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 786
    add-int v3, p1, p2

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    .line 787
    .local v3, "cursor1":I
    add-int v4, v10, v2

    sub-int/2addr v4, v11

    .line 788
    .local v4, "cursor2":I
    add-int v5, v1, v2

    sub-int/2addr v5, v11

    .line 791
    .local v5, "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "dest":I
    .local v6, "dest":I
    add-int/lit8 v7, v3, -0x1

    .end local v3    # "cursor1":I
    .local v7, "cursor1":I
    aget-object v3, v8, v3

    aput-object v3, v8, v5

    .line 792
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "len1":I
    .local v3, "len1":I
    if-nez v3, :cond_0

    .line 793
    add-int/lit8 v5, v2, -0x1

    sub-int v5, v6, v5

    invoke-static {v9, v10, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    return-void

    .line 796
    :cond_0
    if-ne v2, v11, :cond_1

    .line 797
    sub-int/2addr v6, v3

    .line 798
    sub-int/2addr v7, v3

    .line 799
    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v11, v6, 0x1

    invoke-static {v8, v5, v8, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    aget-object v5, v9, v4

    aput-object v5, v8, v6

    .line 801
    return-void

    .line 804
    :cond_1
    iget-object v12, v0, Ljava9/util/TimSort;->c:Ljava/util/Comparator;

    .line 805
    .local v12, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget v5, v0, Ljava9/util/TimSort;->minGallop:I

    .line 808
    .end local p4    # "len2":I
    .local v2, "len2":I
    .local v5, "minGallop":I
    :goto_0
    const/4 v13, 0x0

    .line 809
    .local v13, "count1":I
    const/4 v14, 0x0

    .line 816
    .local v14, "count2":I
    :goto_1
    aget-object v15, v9, v4

    aget-object v11, v8, v7

    invoke-interface {v12, v15, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    if-gez v11, :cond_3

    .line 817
    add-int/lit8 v11, v6, -0x1

    .end local v6    # "dest":I
    .local v11, "dest":I
    add-int/lit8 v15, v7, -0x1

    .end local v7    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v7, v8, v7

    aput-object v7, v8, v6

    .line 818
    add-int/lit8 v13, v13, 0x1

    .line 819
    const/4 v6, 0x0

    .line 820
    .end local v14    # "count2":I
    .local v6, "count2":I
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    .line 821
    move v7, v15

    goto/16 :goto_5

    .line 820
    :cond_2
    move v14, v6

    move v6, v11

    move v7, v15

    goto :goto_2

    .line 823
    .end local v11    # "dest":I
    .end local v15    # "cursor1":I
    .local v6, "dest":I
    .restart local v7    # "cursor1":I
    .restart local v14    # "count2":I
    :cond_3
    add-int/lit8 v11, v6, -0x1

    .end local v6    # "dest":I
    .restart local v11    # "dest":I
    add-int/lit8 v15, v4, -0x1

    .end local v4    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v4, v9, v4

    aput-object v4, v8, v6

    .line 824
    add-int/lit8 v14, v14, 0x1

    .line 825
    const/4 v4, 0x0

    .line 826
    .end local v13    # "count1":I
    .local v4, "count1":I
    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_4

    .line 827
    move v4, v15

    goto/16 :goto_5

    .line 826
    :cond_4
    move v13, v4

    move v6, v11

    move v4, v15

    .line 829
    .end local v11    # "dest":I
    .end local v15    # "cursor2":I
    .local v4, "cursor2":I
    .restart local v6    # "dest":I
    .restart local v13    # "count1":I
    :goto_2
    or-int v11, v13, v14

    if-lt v11, v5, :cond_12

    move v11, v2

    move v15, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v13

    move/from16 v20, v14

    move v13, v3

    move v14, v4

    .line 837
    .end local v2    # "len2":I
    .end local v3    # "len1":I
    .end local v4    # "cursor2":I
    .end local v5    # "minGallop":I
    .end local v6    # "dest":I
    .end local v7    # "cursor1":I
    .local v11, "len2":I
    .local v13, "len1":I
    .local v14, "cursor2":I
    .local v15, "minGallop":I
    .local v17, "dest":I
    .local v18, "cursor1":I
    .local v19, "count1":I
    .local v20, "count2":I
    :goto_3
    aget-object v2, v9, v14

    add-int/lit8 v6, v13, -0x1

    move-object v3, v8

    move/from16 v4, p1

    move v5, v13

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Ljava9/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v7, v13, v2

    .line 838
    .end local v19    # "count1":I
    .local v7, "count1":I
    if-eqz v7, :cond_6

    .line 839
    sub-int v2, v17, v7

    .line 840
    .end local v17    # "dest":I
    .local v2, "dest":I
    sub-int v3, v18, v7

    .line 841
    .end local v18    # "cursor1":I
    .local v3, "cursor1":I
    sub-int v4, v13, v7

    .line 842
    .end local v13    # "len1":I
    .local v4, "len1":I
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-static {v8, v5, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
    if-nez v4, :cond_5

    .line 844
    move v7, v3

    move v3, v4

    move v4, v14

    move v5, v15

    move/from16 v22, v11

    move v11, v2

    move/from16 v2, v22

    goto/16 :goto_5

    .line 843
    :cond_5
    move/from16 v17, v2

    move/from16 v18, v3

    move v13, v4

    .line 846
    .end local v2    # "dest":I
    .end local v3    # "cursor1":I
    .end local v4    # "len1":I
    .restart local v13    # "len1":I
    .restart local v17    # "dest":I
    .restart local v18    # "cursor1":I
    :cond_6
    add-int/lit8 v19, v17, -0x1

    .end local v17    # "dest":I
    .local v19, "dest":I
    add-int/lit8 v21, v14, -0x1

    .end local v14    # "cursor2":I
    .local v21, "cursor2":I
    aget-object v2, v9, v14

    aput-object v2, v8, v17

    .line 847
    add-int/lit8 v11, v11, -0x1

    const/4 v2, 0x1

    if-ne v11, v2, :cond_7

    .line 848
    move v2, v11

    move v3, v13

    move v5, v15

    move/from16 v7, v18

    move/from16 v11, v19

    move/from16 v4, v21

    goto :goto_5

    .line 850
    :cond_7
    aget-object v2, v8, v18

    add-int/lit8 v6, v11, -0x1

    move-object v3, v9

    move v4, v10

    move v5, v11

    move v14, v7

    .end local v7    # "count1":I
    .local v14, "count1":I
    move-object v7, v12

    invoke-static/range {v2 .. v7}, Ljava9/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v2, v11, v2

    .line 851
    .end local v20    # "count2":I
    .local v2, "count2":I
    if-eqz v2, :cond_9

    .line 852
    sub-int v3, v19, v2

    .line 853
    .end local v19    # "dest":I
    .local v3, "dest":I
    sub-int v4, v21, v2

    .line 854
    .end local v21    # "cursor2":I
    .local v4, "cursor2":I
    sub-int v5, v11, v2

    .line 855
    .end local v11    # "len2":I
    .local v5, "len2":I
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    invoke-static {v9, v6, v8, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    const/4 v6, 0x1

    if-gt v5, v6, :cond_8

    .line 857
    move v11, v3

    move v2, v5

    move v3, v13

    move v5, v15

    move/from16 v7, v18

    goto :goto_5

    .line 856
    :cond_8
    move/from16 v19, v3

    move v11, v5

    goto :goto_4

    .line 851
    .end local v3    # "dest":I
    .end local v4    # "cursor2":I
    .end local v5    # "len2":I
    .restart local v11    # "len2":I
    .restart local v19    # "dest":I
    .restart local v21    # "cursor2":I
    :cond_9
    move/from16 v4, v21

    .line 859
    .end local v21    # "cursor2":I
    .restart local v4    # "cursor2":I
    :goto_4
    add-int/lit8 v17, v19, -0x1

    .end local v19    # "dest":I
    .restart local v17    # "dest":I
    add-int/lit8 v3, v18, -0x1

    .end local v18    # "cursor1":I
    .local v3, "cursor1":I
    aget-object v5, v8, v18

    aput-object v5, v8, v19

    .line 860
    add-int/lit8 v13, v13, -0x1

    if-nez v13, :cond_d

    .line 861
    move v7, v3

    move v2, v11

    move v3, v13

    move v5, v15

    move/from16 v11, v17

    .line 868
    .end local v13    # "len1":I
    .end local v14    # "count1":I
    .end local v15    # "minGallop":I
    .end local v17    # "dest":I
    .local v2, "len2":I
    .local v3, "len1":I
    .local v5, "minGallop":I
    .local v7, "cursor1":I
    .local v11, "dest":I
    :goto_5
    const/4 v6, 0x1

    if-ge v5, v6, :cond_a

    move v13, v6

    goto :goto_6

    :cond_a
    move v13, v5

    :goto_6
    iput v13, v0, Ljava9/util/TimSort;->minGallop:I

    .line 870
    if-ne v2, v6, :cond_b

    .line 871
    sub-int/2addr v11, v3

    .line 872
    sub-int/2addr v7, v3

    .line 873
    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v13, v11, 0x1

    invoke-static {v8, v6, v8, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 874
    aget-object v6, v9, v4

    aput-object v6, v8, v11

    goto :goto_7

    .line 875
    :cond_b
    if-eqz v2, :cond_c

    .line 879
    add-int/lit8 v6, v2, -0x1

    sub-int v6, v11, v6

    invoke-static {v9, v10, v8, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    :goto_7
    return-void

    .line 876
    :cond_c
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v13, "Comparison method violates its general contract!"

    invoke-direct {v6, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 862
    .end local v5    # "minGallop":I
    .end local v7    # "cursor1":I
    .local v2, "count2":I
    .local v3, "cursor1":I
    .local v11, "len2":I
    .restart local v13    # "len1":I
    .restart local v14    # "count1":I
    .restart local v15    # "minGallop":I
    .restart local v17    # "dest":I
    :cond_d
    const/4 v6, 0x1

    add-int/lit8 v15, v15, -0x1

    .line 863
    const/4 v5, 0x0

    const/4 v7, 0x7

    if-lt v14, v7, :cond_e

    move/from16 v16, v6

    goto :goto_8

    :cond_e
    move/from16 v16, v5

    :goto_8
    if-lt v2, v7, :cond_f

    move v5, v6

    :cond_f
    or-int v5, v16, v5

    if-nez v5, :cond_11

    .line 864
    if-gez v15, :cond_10

    .line 865
    const/4 v15, 0x0

    .line 866
    :cond_10
    nop

    .end local v2    # "count2":I
    .end local v14    # "count1":I
    add-int/lit8 v5, v15, 0x2

    .line 867
    .end local v15    # "minGallop":I
    .restart local v5    # "minGallop":I
    move v7, v3

    move v2, v11

    move v3, v13

    move v11, v6

    move/from16 v6, v17

    goto/16 :goto_0

    .line 863
    .end local v5    # "minGallop":I
    .restart local v2    # "count2":I
    .restart local v14    # "count1":I
    .restart local v15    # "minGallop":I
    :cond_11
    move/from16 v20, v2

    move/from16 v18, v3

    move/from16 v19, v14

    move v14, v4

    goto/16 :goto_3

    .line 829
    .end local v11    # "len2":I
    .end local v15    # "minGallop":I
    .end local v17    # "dest":I
    .local v2, "len2":I
    .local v3, "len1":I
    .restart local v5    # "minGallop":I
    .restart local v6    # "dest":I
    .restart local v7    # "cursor1":I
    .local v13, "count1":I
    .local v14, "count2":I
    :cond_12
    const/4 v11, 0x1

    goto/16 :goto_1
.end method

.method private mergeLo(IIII)V
    .locals 21
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 672
    .local p0, "this":Ljava9/util/TimSort;, "Ljava9/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v7, v0, Ljava9/util/TimSort;->a:[Ljava/lang/Object;

    .line 673
    .local v7, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {v0, v1}, Ljava9/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v8

    .line 674
    .local v8, "tmp":[Ljava/lang/Object;, "[TT;"
    iget v2, v0, Ljava9/util/TimSort;->tmpBase:I

    .line 675
    .local v2, "cursor1":I
    move/from16 v3, p3

    .line 676
    .local v3, "cursor2":I
    move/from16 v4, p1

    .line 677
    .local v4, "dest":I
    move/from16 v9, p1

    invoke-static {v7, v9, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dest":I
    .local v5, "dest":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "cursor2":I
    .local v6, "cursor2":I
    aget-object v3, v7, v3

    aput-object v3, v7, v4

    .line 681
    add-int/lit8 v3, p4, -0x1

    .end local p4    # "len2":I
    .local v3, "len2":I
    if-nez v3, :cond_0

    .line 682
    invoke-static {v8, v2, v7, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    return-void

    .line 685
    :cond_0
    const/4 v10, 0x1

    if-ne v1, v10, :cond_1

    .line 686
    invoke-static {v7, v6, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    add-int v4, v5, v3

    aget-object v10, v8, v2

    aput-object v10, v7, v4

    .line 688
    return-void

    .line 691
    :cond_1
    iget-object v11, v0, Ljava9/util/TimSort;->c:Ljava/util/Comparator;

    .line 692
    .local v11, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget v4, v0, Ljava9/util/TimSort;->minGallop:I

    .line 695
    .end local p2    # "len1":I
    .local v1, "len1":I
    .local v4, "minGallop":I
    :goto_0
    const/4 v12, 0x0

    .line 696
    .local v12, "count1":I
    const/4 v13, 0x0

    .line 703
    .local v13, "count2":I
    :goto_1
    aget-object v14, v7, v6

    aget-object v15, v8, v2

    invoke-interface {v11, v14, v15}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_3

    .line 704
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "dest":I
    .local v14, "dest":I
    add-int/lit8 v15, v6, 0x1

    .end local v6    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v6, v7, v6

    aput-object v6, v7, v5

    .line 705
    add-int/lit8 v13, v13, 0x1

    .line 706
    const/4 v5, 0x0

    .line 707
    .end local v12    # "count1":I
    .local v5, "count1":I
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    .line 708
    move v9, v10

    move v6, v15

    goto/16 :goto_6

    .line 707
    :cond_2
    move v12, v5

    move v5, v14

    move v6, v15

    goto :goto_2

    .line 710
    .end local v14    # "dest":I
    .end local v15    # "cursor2":I
    .local v5, "dest":I
    .restart local v6    # "cursor2":I
    .restart local v12    # "count1":I
    :cond_3
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "dest":I
    .restart local v14    # "dest":I
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v2, v8, v2

    aput-object v2, v7, v5

    .line 711
    add-int/lit8 v12, v12, 0x1

    .line 712
    const/4 v2, 0x0

    .line 713
    .end local v13    # "count2":I
    .local v2, "count2":I
    add-int/lit8 v1, v1, -0x1

    if-ne v1, v10, :cond_4

    .line 714
    move v9, v10

    move v2, v15

    goto/16 :goto_6

    .line 713
    :cond_4
    move v13, v2

    move v5, v14

    move v2, v15

    .line 716
    .end local v14    # "dest":I
    .end local v15    # "cursor1":I
    .local v2, "cursor1":I
    .restart local v5    # "dest":I
    .restart local v13    # "count2":I
    :goto_2
    or-int v14, v12, v13

    if-lt v14, v4, :cond_12

    move v14, v3

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v12

    move/from16 v18, v13

    move v12, v1

    move v13, v2

    move v6, v5

    .line 724
    .end local v1    # "len1":I
    .end local v2    # "cursor1":I
    .end local v3    # "len2":I
    .end local v4    # "minGallop":I
    .end local v5    # "dest":I
    .local v6, "dest":I
    .local v12, "len1":I
    .local v13, "cursor1":I
    .local v14, "len2":I
    .local v15, "minGallop":I
    .local v16, "cursor2":I
    .local v17, "count1":I
    .local v18, "count2":I
    :goto_3
    aget-object v1, v7, v16

    const/4 v5, 0x0

    move-object v2, v8

    move v3, v13

    move v4, v12

    move v10, v6

    .end local v6    # "dest":I
    .local v10, "dest":I
    move-object v6, v11

    invoke-static/range {v1 .. v6}, Ljava9/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v6

    .line 725
    .end local v17    # "count1":I
    .local v6, "count1":I
    if-eqz v6, :cond_6

    .line 726
    invoke-static {v8, v13, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 727
    add-int v1, v10, v6

    .line 728
    .end local v10    # "dest":I
    .local v1, "dest":I
    add-int v2, v13, v6

    .line 729
    .end local v13    # "cursor1":I
    .restart local v2    # "cursor1":I
    sub-int v3, v12, v6

    .line 730
    .end local v12    # "len1":I
    .local v3, "len1":I
    const/4 v4, 0x1

    if-gt v3, v4, :cond_5

    .line 731
    move v4, v15

    move/from16 v6, v16

    const/4 v9, 0x1

    move/from16 v20, v14

    move v14, v1

    move v1, v3

    move/from16 v3, v20

    goto/16 :goto_6

    .line 730
    :cond_5
    move v13, v2

    move v12, v3

    goto :goto_4

    .line 725
    .end local v1    # "dest":I
    .end local v2    # "cursor1":I
    .end local v3    # "len1":I
    .restart local v10    # "dest":I
    .restart local v12    # "len1":I
    .restart local v13    # "cursor1":I
    :cond_6
    move v1, v10

    .line 733
    .end local v10    # "dest":I
    .restart local v1    # "dest":I
    :goto_4
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "cursor2":I
    .local v5, "cursor2":I
    aget-object v2, v7, v16

    aput-object v2, v7, v1

    .line 734
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    .line 735
    move v6, v5

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    const/4 v9, 0x1

    move v14, v10

    goto :goto_6

    .line 737
    :cond_7
    aget-object v1, v8, v13

    const/16 v16, 0x0

    move-object v2, v7

    move v3, v5

    move v4, v14

    move v9, v5

    .end local v5    # "cursor2":I
    .local v9, "cursor2":I
    move/from16 v5, v16

    move/from16 v19, v6

    .end local v6    # "count1":I
    .local v19, "count1":I
    move-object v6, v11

    invoke-static/range {v1 .. v6}, Ljava9/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    .line 738
    .end local v18    # "count2":I
    .local v1, "count2":I
    if-eqz v1, :cond_9

    .line 739
    invoke-static {v7, v9, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 740
    add-int v2, v10, v1

    .line 741
    .end local v10    # "dest":I
    .local v2, "dest":I
    add-int v6, v9, v1

    .line 742
    .end local v9    # "cursor2":I
    .local v6, "cursor2":I
    sub-int v3, v14, v1

    .line 743
    .end local v14    # "len2":I
    .local v3, "len2":I
    if-nez v3, :cond_8

    .line 744
    move v14, v2

    move v1, v12

    move v2, v13

    move v4, v15

    const/4 v9, 0x1

    goto :goto_6

    .line 743
    :cond_8
    move v10, v2

    move v14, v3

    move/from16 v16, v6

    goto :goto_5

    .line 738
    .end local v2    # "dest":I
    .end local v3    # "len2":I
    .end local v6    # "cursor2":I
    .restart local v9    # "cursor2":I
    .restart local v10    # "dest":I
    .restart local v14    # "len2":I
    :cond_9
    move/from16 v16, v9

    .line 746
    .end local v9    # "cursor2":I
    .restart local v16    # "cursor2":I
    :goto_5
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "dest":I
    .local v6, "dest":I
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "cursor1":I
    .local v2, "cursor1":I
    aget-object v3, v8, v13

    aput-object v3, v7, v10

    .line 747
    add-int/lit8 v12, v12, -0x1

    const/4 v9, 0x1

    if-ne v12, v9, :cond_d

    .line 748
    move v1, v12

    move v3, v14

    move v4, v15

    move v14, v6

    move/from16 v6, v16

    .line 755
    .end local v12    # "len1":I
    .end local v15    # "minGallop":I
    .end local v16    # "cursor2":I
    .end local v19    # "count1":I
    .local v1, "len1":I
    .restart local v3    # "len2":I
    .restart local v4    # "minGallop":I
    .local v6, "cursor2":I
    .local v14, "dest":I
    :goto_6
    if-ge v4, v9, :cond_a

    move v5, v9

    goto :goto_7

    :cond_a
    move v5, v4

    :goto_7
    iput v5, v0, Ljava9/util/TimSort;->minGallop:I

    .line 757
    if-ne v1, v9, :cond_b

    .line 758
    invoke-static {v7, v6, v7, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    add-int v5, v14, v3

    aget-object v9, v8, v2

    aput-object v9, v7, v5

    goto :goto_8

    .line 760
    :cond_b
    if-eqz v1, :cond_c

    .line 764
    invoke-static {v8, v2, v7, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    :goto_8
    return-void

    .line 761
    :cond_c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v9, "Comparison method violates its general contract!"

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 749
    .end local v3    # "len2":I
    .end local v4    # "minGallop":I
    .local v1, "count2":I
    .local v6, "dest":I
    .restart local v12    # "len1":I
    .local v14, "len2":I
    .restart local v15    # "minGallop":I
    .restart local v16    # "cursor2":I
    .restart local v19    # "count1":I
    :cond_d
    add-int/lit8 v15, v15, -0x1

    .line 750
    const/4 v4, 0x0

    const/4 v3, 0x7

    move/from16 v5, v19

    .end local v19    # "count1":I
    .local v5, "count1":I
    if-lt v5, v3, :cond_e

    move v10, v9

    goto :goto_9

    :cond_e
    move v10, v4

    :goto_9
    if-lt v1, v3, :cond_f

    move v4, v9

    :cond_f
    or-int v3, v10, v4

    if-nez v3, :cond_11

    .line 751
    if-gez v15, :cond_10

    .line 752
    const/4 v15, 0x0

    .line 753
    :cond_10
    nop

    .end local v1    # "count2":I
    .end local v5    # "count1":I
    add-int/lit8 v4, v15, 0x2

    .line 754
    .end local v15    # "minGallop":I
    .restart local v4    # "minGallop":I
    move v5, v6

    move v10, v9

    move v1, v12

    move v3, v14

    move/from16 v6, v16

    move/from16 v9, p1

    goto/16 :goto_0

    .line 750
    .end local v4    # "minGallop":I
    .restart local v1    # "count2":I
    .restart local v5    # "count1":I
    .restart local v15    # "minGallop":I
    :cond_11
    move/from16 v18, v1

    move v13, v2

    move/from16 v17, v5

    move v10, v9

    move/from16 v9, p1

    goto/16 :goto_3

    .line 716
    .end local v14    # "len2":I
    .end local v15    # "minGallop":I
    .end local v16    # "cursor2":I
    .local v1, "len1":I
    .restart local v3    # "len2":I
    .restart local v4    # "minGallop":I
    .local v5, "dest":I
    .local v6, "cursor2":I
    .local v12, "count1":I
    .local v13, "count2":I
    :cond_12
    move v9, v10

    move/from16 v9, p1

    goto/16 :goto_1
.end method

.method private static minRunLength(I)I
    .locals 2
    .param p0, "n"    # I

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    .line 399
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 400
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .locals 2
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .line 412
    .local p0, "this":Ljava9/util/TimSort;, "Ljava9/util/TimSort<TT;>;"
    iget-object v0, p0, Ljava9/util/TimSort;->runBase:[I

    iget v1, p0, Ljava9/util/TimSort;->stackSize:I

    aput p1, v0, v1

    .line 413
    iget-object v0, p0, Ljava9/util/TimSort;->runLen:[I

    aput p2, v0, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava9/util/TimSort;->stackSize:I

    .line 415
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 371
    add-int/lit8 p2, p2, -0x1

    .line 372
    :goto_0
    if-ge p1, p2, :cond_0

    .line 373
    aget-object v0, p0, p1

    .line 374
    .local v0, "t":Ljava/lang/Object;
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "lo":I
    .local v1, "lo":I
    aget-object v2, p0, p2

    aput-object v2, p0, p1

    .line 375
    add-int/lit8 p1, p2, -0x1

    .end local p2    # "hi":I
    .local p1, "hi":I
    aput-object v0, p0, p2

    .line 376
    .end local v0    # "t":Ljava/lang/Object;
    move p2, p1

    move p1, v1

    goto :goto_0

    .line 377
    .end local v1    # "lo":I
    .local p1, "lo":I
    .restart local p2    # "hi":I
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V
    .locals 9
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p5, "workBase"    # I
    .param p6, "workLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;[TT;II)V"
        }
    .end annotation

    .line 214
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p4, "work":[Ljava/lang/Object;, "[TT;"
    sub-int v0, p2, p1

    .line 215
    .local v0, "nRemaining":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 216
    return-void

    .line 219
    :cond_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 220
    invoke-static {p0, p1, p2, p3}, Ljava9/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v1

    .line 221
    .local v1, "initRunLen":I
    add-int v2, p1, v1

    invoke-static {p0, p1, p2, v2, p3}, Ljava9/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 222
    return-void

    .line 230
    .end local v1    # "initRunLen":I
    :cond_1
    new-instance v1, Ljava9/util/TimSort;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v3 .. v8}, Ljava9/util/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;[Ljava/lang/Object;II)V

    .line 231
    .local v1, "ts":Ljava9/util/TimSort;, "Ljava9/util/TimSort<TT;>;"
    invoke-static {v0}, Ljava9/util/TimSort;->minRunLength(I)I

    move-result v2

    .line 234
    .local v2, "minRun":I
    :goto_0
    invoke-static {p0, p1, p2, p3}, Ljava9/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v3

    .line 237
    .local v3, "runLen":I
    if-ge v3, v2, :cond_3

    .line 238
    if-gt v0, v2, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v2

    .line 239
    .local v4, "force":I
    :goto_1
    add-int v5, p1, v4

    add-int v6, p1, v3

    invoke-static {p0, p1, v5, v6, p3}, Ljava9/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 240
    move v3, v4

    .line 244
    .end local v4    # "force":I
    :cond_3
    invoke-direct {v1, p1, v3}, Ljava9/util/TimSort;->pushRun(II)V

    .line 245
    invoke-direct {v1}, Ljava9/util/TimSort;->mergeCollapse()V

    .line 248
    add-int/2addr p1, v3

    .line 249
    sub-int/2addr v0, v3

    .line 250
    .end local v3    # "runLen":I
    if-nez v0, :cond_4

    .line 254
    invoke-direct {v1}, Ljava9/util/TimSort;->mergeForceCollapse()V

    .line 255
    return-void

    .line 250
    :cond_4
    goto :goto_0
.end method
