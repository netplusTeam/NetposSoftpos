.class final Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
.super Ljava9/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntCumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final array:[I

.field final fence:I

.field final function:Ljava9/util/function/IntBinaryOperator;

.field final hi:I

.field in:I

.field left:Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

.field final lo:I

.field final origin:I

.field out:I

.field right:Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;Ljava9/util/function/IntBinaryOperator;[III)V
    .locals 3
    .param p1, "parent"    # Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava9/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .line 542
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 543
    iput-object p2, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava9/util/function/IntBinaryOperator;

    iput-object p3, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    .line 544
    iput p4, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    iput p4, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    iput p5, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    iput p5, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    .line 546
    sub-int v0, p5, p4

    .line 547
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    move v1, v0

    .local v1, "p":I
    const/16 v2, 0x10

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .line 549
    return-void
.end method

.method constructor <init>(Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;Ljava9/util/function/IntBinaryOperator;[IIIIII)V
    .locals 0
    .param p1, "parent"    # Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava9/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .line 555
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 556
    iput-object p2, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava9/util/function/IntBinaryOperator;

    iput-object p3, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    .line 557
    iput p4, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    iput p5, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    .line 558
    iput p6, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .line 559
    iput p7, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    iput p8, p0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    .line 560
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 22

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava9/util/function/IntBinaryOperator;

    move-object v11, v1

    .local v11, "fn":Ljava9/util/function/IntBinaryOperator;
    if-eqz v1, :cond_21

    iget-object v1, v0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    move-object v12, v1

    .local v12, "a":[I
    if-eqz v1, :cond_21

    .line 567
    iget v1, v0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .local v1, "th":I
    iget v13, v0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    .local v13, "org":I
    iget v14, v0, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    .line 568
    .local v14, "fnc":I
    move-object/from16 v2, p0

    move-object v15, v2

    .line 569
    .local v15, "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_0
    iget v2, v15, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    move v10, v2

    .local v10, "l":I
    if-ltz v2, :cond_1f

    iget v2, v15, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    move v9, v2

    .local v9, "h":I
    array-length v3, v12

    if-gt v2, v3, :cond_1e

    .line 570
    sub-int v2, v9, v10

    const/4 v3, 0x1

    if-le v2, v1, :cond_a

    .line 571
    iget-object v8, v15, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

    .local v8, "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    iget-object v7, v15, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

    .line 572
    .local v7, "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v8, :cond_0

    .line 573
    add-int v2, v10, v9

    ushr-int/lit8 v16, v2, 0x1

    .line 574
    .local v16, "mid":I
    new-instance v6, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v2, v6

    move-object v3, v15

    move-object v4, v11

    move-object v5, v12

    move-object v0, v6

    move v6, v13

    move-object/from16 v17, v7

    .end local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v17, "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    move v7, v14

    move-object/from16 v18, v8

    .end local v8    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v18, "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    move v8, v1

    move/from16 v19, v9

    .end local v9    # "h":I
    .local v19, "h":I
    move/from16 v9, v16

    move/from16 v20, v10

    .end local v10    # "l":I
    .local v20, "l":I
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;Ljava9/util/function/IntBinaryOperator;[IIIIII)V

    iput-object v0, v15, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object/from16 v17, v0

    .line 576
    .local v0, "f":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    new-instance v10, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v2, v10

    move/from16 v9, v20

    move-object/from16 v21, v0

    move-object v0, v10

    .end local v0    # "f":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v21, "f":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;Ljava9/util/function/IntBinaryOperator;[IIIIII)V

    iput-object v0, v15, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v8, v0

    .line 578
    .end local v15    # "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v16    # "mid":I
    .end local v18    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v0, "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v8    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v15, v0

    move-object v2, v8

    move-object/from16 v7, v17

    move/from16 v8, v20

    move-object/from16 v0, v21

    goto/16 :goto_4

    .line 580
    .end local v0    # "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v19    # "h":I
    .end local v20    # "l":I
    .end local v21    # "f":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v9    # "h":I
    .restart local v10    # "l":I
    .restart local v15    # "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_0
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    .end local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v8    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v9    # "h":I
    .end local v10    # "l":I
    .restart local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v18    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v19    # "h":I
    .restart local v20    # "l":I
    iget v0, v15, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 581
    .local v0, "pin":I
    move-object/from16 v2, v18

    .end local v18    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v2, "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    iput v0, v2, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 582
    const/4 v4, 0x0

    move-object v5, v4

    .line 583
    .end local v15    # "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v4, "f":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v5, "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object/from16 v6, v17

    .end local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v6, "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v6, :cond_4

    .line 584
    iget v7, v2, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 585
    .local v7, "lout":I
    move/from16 v8, v20

    .end local v20    # "l":I
    .local v8, "l":I
    if-ne v8, v13, :cond_1

    move v9, v7

    goto :goto_1

    .line 586
    :cond_1
    invoke-interface {v11, v0, v7}, Ljava9/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    :goto_1
    iput v9, v6, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 588
    :cond_2
    invoke-virtual {v6}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v9

    move v10, v9

    .local v10, "c":I
    and-int/2addr v9, v3

    if-eqz v9, :cond_3

    .line 589
    goto :goto_2

    .line 590
    :cond_3
    or-int/lit8 v9, v10, 0x1

    invoke-virtual {v6, v10, v9}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 591
    move-object v5, v6

    .line 592
    goto :goto_2

    .line 583
    .end local v7    # "lout":I
    .end local v8    # "l":I
    .end local v10    # "c":I
    .restart local v20    # "l":I
    :cond_4
    move/from16 v8, v20

    .line 597
    .end local v20    # "l":I
    .restart local v8    # "l":I
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v7

    move v9, v7

    .local v9, "c":I
    and-int/2addr v7, v3

    if-eqz v7, :cond_6

    .line 598
    move-object v15, v5

    goto :goto_3

    .line 599
    :cond_6
    or-int/lit8 v7, v9, 0x1

    invoke-virtual {v2, v9, v7}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 600
    if-eqz v5, :cond_7

    .line 601
    move-object v4, v5

    .line 602
    :cond_7
    move-object v3, v2

    .line 603
    .end local v5    # "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v3, "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v15, v3

    .line 606
    .end local v3    # "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v9    # "c":I
    .restart local v15    # "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_3
    if-nez v15, :cond_8

    .line 607
    goto/16 :goto_10

    .line 606
    :cond_8
    move-object v0, v4

    move-object v7, v6

    .line 609
    .end local v4    # "f":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v6    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v0, "f":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v7, "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_4
    if-eqz v0, :cond_9

    .line 610
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 611
    .end local v0    # "f":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v2    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_9
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 570
    .end local v8    # "l":I
    .end local v19    # "h":I
    .local v9, "h":I
    .local v10, "l":I
    :cond_a
    move/from16 v19, v9

    move v8, v10

    .line 615
    .end local v9    # "h":I
    .end local v10    # "l":I
    .restart local v8    # "l":I
    .restart local v19    # "h":I
    :goto_5
    invoke-virtual {v15}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v0

    move v2, v0

    .local v2, "b":I
    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-eqz v0, :cond_b

    .line 616
    goto/16 :goto_10

    .line 617
    :cond_b
    and-int/lit8 v0, v2, 0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_6

    :cond_c
    if-le v8, v13, :cond_d

    move v0, v5

    goto :goto_6

    :cond_d
    const/4 v0, 0x6

    .line 619
    .local v0, "state":I
    :goto_6
    or-int v6, v2, v0

    invoke-virtual {v15, v2, v6}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 620
    nop

    .line 624
    .end local v2    # "b":I
    if-eq v0, v5, :cond_10

    .line 626
    if-ne v8, v13, :cond_e

    .line 627
    aget v2, v12, v13

    .line 628
    .local v2, "sum":I
    add-int/lit8 v6, v13, 0x1

    .local v6, "first":I
    goto :goto_7

    .line 631
    .end local v2    # "sum":I
    .end local v6    # "first":I
    :cond_e
    iget v2, v15, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 632
    .restart local v2    # "sum":I
    move v6, v8

    .line 634
    .restart local v6    # "first":I
    :goto_7
    move v7, v6

    .local v7, "i":I
    :goto_8
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v7, v9, :cond_f

    .line 635
    aget v10, v12, v7

    invoke-interface {v11, v2, v10}, Ljava9/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v10

    move v2, v10

    aput v10, v12, v7

    .line 634
    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v9

    goto :goto_8

    .line 636
    .end local v6    # "first":I
    .end local v7    # "i":I
    :cond_f
    move v6, v2

    goto :goto_a

    .line 637
    .end local v2    # "sum":I
    .end local v9    # "h":I
    .restart local v19    # "h":I
    :cond_10
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v9, v14, :cond_12

    .line 638
    aget v2, v12, v8

    .line 639
    .restart local v2    # "sum":I
    add-int/lit8 v10, v8, 0x1

    .local v10, "i":I
    :goto_9
    if-ge v10, v9, :cond_11

    .line 640
    aget v6, v12, v10

    invoke-interface {v11, v2, v6}, Ljava9/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v2

    .line 639
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_11
    move v6, v2

    .end local v10    # "i":I
    goto :goto_a

    .line 643
    .end local v2    # "sum":I
    :cond_12
    iget v2, v15, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move v6, v2

    .line 644
    .local v6, "sum":I
    :goto_a
    iput v6, v15, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 646
    :goto_b
    invoke-virtual {v15}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->getCompleter()Ljava9/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v7, v2

    .local v7, "par":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v2, :cond_13

    .line 647
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_20

    .line 648
    invoke-virtual {v15}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->quietlyComplete()V

    goto/16 :goto_10

    .line 651
    :cond_13
    invoke-virtual {v7}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v2

    .line 652
    .local v2, "b":I
    and-int v10, v2, v0

    and-int/2addr v10, v4

    if-eqz v10, :cond_14

    .line 653
    move-object v10, v7

    move-object v15, v10

    .end local v15    # "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v10, "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_f

    .line 654
    .end local v10    # "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v15    # "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_14
    and-int v10, v2, v0

    and-int/2addr v10, v5

    if-eqz v10, :cond_1b

    .line 656
    iget-object v10, v7, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object/from16 v16, v10

    .local v16, "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v10, :cond_17

    iget-object v10, v7, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object/from16 v17, v10

    .restart local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v10, :cond_16

    .line 658
    move-object/from16 v10, v16

    .end local v16    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v10, "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    iget v3, v10, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 659
    .local v3, "lout":I
    move-object/from16 v4, v17

    .end local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v4, "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    iget v5, v4, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    if-ne v5, v14, :cond_15

    move v5, v3

    goto :goto_c

    :cond_15
    iget v5, v4, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 660
    invoke-interface {v11, v3, v5}, Ljava9/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v5

    :goto_c
    iput v5, v7, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    goto :goto_d

    .line 656
    .end local v3    # "lout":I
    .end local v4    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v10    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v16    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_16
    move-object/from16 v10, v16

    move-object/from16 v4, v17

    .end local v16    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v4    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v10    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_d

    .end local v4    # "rt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v10    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v16    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_17
    move-object/from16 v10, v16

    .line 662
    .end local v16    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v10    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_d
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_18

    iget v3, v7, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    if-ne v3, v13, :cond_18

    const/4 v3, 0x1

    goto :goto_e

    :cond_18
    const/4 v3, 0x0

    .line 664
    .local v3, "refork":I
    :goto_e
    or-int v4, v2, v0

    or-int/2addr v4, v3

    move v5, v4

    .local v5, "nextState":I
    if-eq v4, v2, :cond_19

    .line 665
    invoke-virtual {v7, v2, v5}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 666
    :cond_19
    const/4 v0, 0x2

    .line 667
    move-object v15, v7

    .line 668
    if-eqz v3, :cond_1a

    .line 669
    invoke-virtual {v7}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 671
    .end local v3    # "refork":I
    .end local v5    # "nextState":I
    .end local v10    # "lt":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_1a
    goto :goto_f

    .line 672
    :cond_1b
    or-int v3, v2, v0

    invoke-virtual {v7, v2, v3}, Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 673
    goto :goto_10

    .line 674
    .end local v2    # "b":I
    :cond_1c
    :goto_f
    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    goto :goto_b

    .line 619
    .end local v6    # "sum":I
    .end local v7    # "par":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v9    # "h":I
    .restart local v2    # "b":I
    .restart local v19    # "h":I
    :cond_1d
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 569
    .end local v0    # "state":I
    .end local v2    # "b":I
    .end local v8    # "l":I
    .local v10, "l":I
    :cond_1e
    move v8, v10

    .end local v10    # "l":I
    .restart local v8    # "l":I
    goto :goto_10

    .end local v8    # "l":I
    .end local v9    # "h":I
    .restart local v10    # "l":I
    :cond_1f
    move v8, v10

    .line 677
    .end local v10    # "l":I
    .restart local v8    # "l":I
    :cond_20
    :goto_10
    return-void

    .line 566
    .end local v1    # "th":I
    .end local v8    # "l":I
    .end local v12    # "a":[I
    .end local v13    # "org":I
    .end local v14    # "fnc":I
    .end local v15    # "t":Ljava9/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
