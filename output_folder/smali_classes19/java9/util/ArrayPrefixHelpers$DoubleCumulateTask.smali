.class final Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
.super Ljava9/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleCumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final array:[D

.field final fence:I

.field final function:Ljava9/util/function/DoubleBinaryOperator;

.field final hi:I

.field in:D

.field left:Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final lo:I

.field final origin:I

.field out:D

.field right:Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava9/util/function/DoubleBinaryOperator;[DII)V
    .locals 3
    .param p1, "parent"    # Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .param p2, "function"    # Ljava9/util/function/DoubleBinaryOperator;
    .param p3, "array"    # [D
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .line 392
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 393
    iput-object p2, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava9/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 394
    iput p4, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p4, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p5, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    iput p5, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    .line 396
    sub-int v0, p5, p4

    .line 397
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
    iput v2, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .line 399
    return-void
.end method

.method constructor <init>(Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava9/util/function/DoubleBinaryOperator;[DIIIII)V
    .locals 0
    .param p1, "parent"    # Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .param p2, "function"    # Ljava9/util/function/DoubleBinaryOperator;
    .param p3, "array"    # [D
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .line 405
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 406
    iput-object p2, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava9/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 407
    iput p4, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p5, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 408
    iput p6, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .line 409
    iput p7, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p8, p0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    .line 410
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 23

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava9/util/function/DoubleBinaryOperator;

    move-object v11, v1

    .local v11, "fn":Ljava9/util/function/DoubleBinaryOperator;
    if-eqz v1, :cond_21

    iget-object v1, v0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    move-object v12, v1

    .local v12, "a":[D
    if-eqz v1, :cond_21

    .line 417
    iget v1, v0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .local v1, "th":I
    iget v13, v0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    .local v13, "org":I
    iget v14, v0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 418
    .local v14, "fnc":I
    move-object/from16 v2, p0

    move-object v15, v2

    .line 419
    .local v15, "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_0
    iget v2, v15, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    move v10, v2

    .local v10, "l":I
    if-ltz v2, :cond_20

    iget v2, v15, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    move v9, v2

    .local v9, "h":I
    array-length v3, v12

    if-gt v2, v3, :cond_1f

    .line 420
    sub-int v2, v9, v10

    const/4 v3, 0x1

    if-le v2, v1, :cond_a

    .line 421
    iget-object v8, v15, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .local v8, "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iget-object v7, v15, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .line 422
    .local v7, "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v8, :cond_0

    .line 423
    add-int v2, v10, v9

    ushr-int/lit8 v16, v2, 0x1

    .line 424
    .local v16, "mid":I
    new-instance v6, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v2, v6

    move-object v3, v15

    move-object v4, v11

    move-object v5, v12

    move-object v0, v6

    move v6, v13

    move-object/from16 v17, v7

    .end local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v17, "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move v7, v14

    move-object/from16 v18, v8

    .end local v8    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v18, "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move v8, v1

    move/from16 v19, v9

    .end local v9    # "h":I
    .local v19, "h":I
    move/from16 v9, v16

    move/from16 v20, v10

    .end local v10    # "l":I
    .local v20, "l":I
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava9/util/function/DoubleBinaryOperator;[DIIIII)V

    iput-object v0, v15, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object/from16 v17, v0

    .line 426
    .local v0, "f":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    new-instance v10, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v2, v10

    move/from16 v9, v20

    move-object/from16 v21, v0

    move-object v0, v10

    .end local v0    # "f":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v21, "f":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava9/util/function/DoubleBinaryOperator;[DIIIII)V

    iput-object v0, v15, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v8, v0

    .line 428
    .end local v15    # "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v16    # "mid":I
    .end local v18    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v0, "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v8    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object v15, v0

    move-object/from16 v7, v17

    move/from16 v10, v20

    move-object/from16 v0, v21

    goto/16 :goto_4

    .line 430
    .end local v0    # "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v19    # "h":I
    .end local v20    # "l":I
    .end local v21    # "f":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v9    # "h":I
    .restart local v10    # "l":I
    .restart local v15    # "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_0
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    .end local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v8    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v9    # "h":I
    .end local v10    # "l":I
    .restart local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v18    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v19    # "h":I
    .restart local v20    # "l":I
    iget-wide v4, v15, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 431
    .local v4, "pin":D
    move-object/from16 v0, v18

    .end local v18    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v0, "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iput-wide v4, v0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 432
    const/4 v2, 0x0

    move-object v6, v2

    .line 433
    .end local v15    # "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v2, "f":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v6, "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    nop

    .end local v17    # "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v7, :cond_4

    .line 434
    iget-wide v8, v0, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 435
    .local v8, "lout":D
    move/from16 v10, v20

    .end local v20    # "l":I
    .restart local v10    # "l":I
    if-ne v10, v13, :cond_1

    move-wide/from16 v20, v4

    move-wide v3, v8

    goto :goto_1

    .line 436
    :cond_1
    invoke-interface {v11, v4, v5, v8, v9}, Ljava9/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v15

    move-wide/from16 v20, v4

    move-wide v3, v15

    .end local v4    # "pin":D
    .local v20, "pin":D
    :goto_1
    iput-wide v3, v7, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 438
    :cond_2
    invoke-virtual {v7}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    .local v4, "c":I
    and-int/2addr v3, v5

    if-eqz v3, :cond_3

    .line 439
    goto :goto_2

    .line 440
    :cond_3
    or-int/lit8 v3, v4, 0x1

    invoke-virtual {v7, v4, v3}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    move-object v6, v7

    .line 442
    goto :goto_2

    .line 433
    .end local v8    # "lout":D
    .end local v10    # "l":I
    .local v4, "pin":D
    .local v20, "l":I
    :cond_4
    move/from16 v10, v20

    move-wide/from16 v20, v4

    .line 447
    .end local v4    # "pin":D
    .restart local v10    # "l":I
    .local v20, "pin":D
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    .local v4, "c":I
    and-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 448
    move-object v15, v6

    goto :goto_3

    .line 449
    :cond_6
    or-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 450
    if-eqz v6, :cond_7

    .line 451
    move-object v2, v6

    .line 452
    :cond_7
    move-object v3, v0

    .line 453
    .end local v6    # "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v3, "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object v15, v3

    .line 456
    .end local v3    # "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v4    # "c":I
    .restart local v15    # "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_3
    if-nez v15, :cond_8

    .line 457
    move/from16 v18, v1

    goto/16 :goto_10

    .line 456
    :cond_8
    move-object v8, v0

    move-object v0, v2

    .line 459
    .end local v2    # "f":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v20    # "pin":D
    .local v0, "f":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v8, "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_4
    if-eqz v0, :cond_9

    .line 460
    invoke-virtual {v0}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 461
    .end local v0    # "f":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v7    # "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v8    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_9
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 420
    .end local v19    # "h":I
    .restart local v9    # "h":I
    :cond_a
    move v5, v3

    move/from16 v19, v9

    .line 465
    .end local v9    # "h":I
    .restart local v19    # "h":I
    :goto_5
    invoke-virtual {v15}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v0

    move v2, v0

    .local v2, "b":I
    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_b

    .line 466
    move/from16 v18, v1

    goto/16 :goto_10

    .line 467
    :cond_b
    and-int/lit8 v0, v2, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_6

    :cond_c
    if-le v10, v13, :cond_d

    move v0, v4

    goto :goto_6

    :cond_d
    const/4 v0, 0x6

    .line 469
    .local v0, "state":I
    :goto_6
    or-int v6, v2, v0

    invoke-virtual {v15, v2, v6}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 470
    nop

    .line 474
    .end local v2    # "b":I
    if-eq v0, v4, :cond_10

    .line 476
    if-ne v10, v13, :cond_e

    .line 477
    aget-wide v6, v12, v13

    .line 478
    .local v6, "sum":D
    add-int/lit8 v2, v13, 0x1

    .local v2, "first":I
    goto :goto_7

    .line 481
    .end local v2    # "first":I
    .end local v6    # "sum":D
    :cond_e
    iget-wide v6, v15, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 482
    .restart local v6    # "sum":D
    move v2, v10

    .line 484
    .restart local v2    # "first":I
    :goto_7
    move v8, v2

    .local v8, "i":I
    :goto_8
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v8, v9, :cond_f

    .line 485
    aget-wide v4, v12, v8

    invoke-interface {v11, v6, v7, v4, v5}, Ljava9/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v4

    move-wide v6, v4

    aput-wide v4, v12, v8

    .line 484
    add-int/lit8 v8, v8, 0x1

    move/from16 v19, v9

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_8

    .line 486
    .end local v2    # "first":I
    .end local v8    # "i":I
    :cond_f
    goto :goto_a

    .line 487
    .end local v6    # "sum":D
    .end local v9    # "h":I
    .restart local v19    # "h":I
    :cond_10
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v9, v14, :cond_12

    .line 488
    aget-wide v4, v12, v10

    .line 489
    .local v4, "sum":D
    add-int/lit8 v2, v10, 0x1

    move-wide v6, v4

    .end local v4    # "sum":D
    .local v2, "i":I
    .restart local v6    # "sum":D
    :goto_9
    if-ge v2, v9, :cond_11

    .line 490
    aget-wide v4, v12, v2

    invoke-interface {v11, v6, v7, v4, v5}, Ljava9/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v6

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .end local v2    # "i":I
    :cond_11
    goto :goto_a

    .line 493
    .end local v6    # "sum":D
    :cond_12
    iget-wide v6, v15, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 494
    .restart local v6    # "sum":D
    :goto_a
    iput-wide v6, v15, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 496
    :goto_b
    invoke-virtual {v15}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->getCompleter()Ljava9/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v4, v2

    .local v4, "par":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v2, :cond_14

    .line 497
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_13

    .line 498
    invoke-virtual {v15}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->quietlyComplete()V

    move/from16 v18, v1

    goto/16 :goto_10

    .line 497
    :cond_13
    move/from16 v18, v1

    goto/16 :goto_10

    .line 501
    :cond_14
    invoke-virtual {v4}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v2

    .line 502
    .local v2, "b":I
    and-int v5, v2, v0

    and-int/2addr v5, v3

    if-eqz v5, :cond_15

    .line 503
    move-object v5, v4

    move/from16 v18, v1

    move-object v15, v5

    move-wide/from16 v21, v6

    move/from16 v19, v9

    .end local v15    # "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v5, "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    goto/16 :goto_f

    .line 504
    .end local v5    # "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v15    # "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_15
    and-int v5, v2, v0

    const/4 v8, 0x2

    and-int/2addr v5, v8

    if-eqz v5, :cond_1c

    .line 506
    iget-object v5, v4, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object/from16 v16, v5

    .local v16, "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v5, :cond_18

    iget-object v5, v4, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object/from16 v18, v5

    .local v18, "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v5, :cond_17

    .line 508
    move/from16 v19, v9

    move-object/from16 v5, v16

    .end local v9    # "h":I
    .end local v16    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v5, "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v19    # "h":I
    iget-wide v8, v5, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 509
    .local v8, "lout":D
    move-object/from16 v3, v18

    move/from16 v18, v1

    .end local v1    # "th":I
    .local v3, "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v18, "th":I
    iget v1, v3, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    if-ne v1, v14, :cond_16

    move-object v1, v5

    move-wide/from16 v21, v6

    move-wide v5, v8

    goto :goto_c

    :cond_16
    move-object v1, v5

    move-wide/from16 v21, v6

    .end local v5    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v6    # "sum":D
    .local v1, "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v21, "sum":D
    iget-wide v5, v3, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 510
    invoke-interface {v11, v8, v9, v5, v6}, Ljava9/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v5

    :goto_c
    iput-wide v5, v4, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    goto :goto_d

    .line 506
    .end local v3    # "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v8    # "lout":D
    .end local v19    # "h":I
    .end local v21    # "sum":D
    .local v1, "th":I
    .restart local v6    # "sum":D
    .restart local v9    # "h":I
    .restart local v16    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v18, "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_17
    move-wide/from16 v21, v6

    move/from16 v19, v9

    move-object/from16 v3, v18

    move/from16 v18, v1

    move-object/from16 v1, v16

    .end local v6    # "sum":D
    .end local v9    # "h":I
    .end local v16    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v1, "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v3    # "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v18, "th":I
    .restart local v19    # "h":I
    .restart local v21    # "sum":D
    goto :goto_d

    .end local v3    # "rt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v18    # "th":I
    .end local v19    # "h":I
    .end local v21    # "sum":D
    .local v1, "th":I
    .restart local v6    # "sum":D
    .restart local v9    # "h":I
    .restart local v16    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_18
    move/from16 v18, v1

    move-wide/from16 v21, v6

    move/from16 v19, v9

    move-object/from16 v1, v16

    .line 512
    .end local v6    # "sum":D
    .end local v9    # "h":I
    .end local v16    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v1, "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v18    # "th":I
    .restart local v19    # "h":I
    .restart local v21    # "sum":D
    :goto_d
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_19

    iget v3, v4, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    if-ne v3, v13, :cond_19

    const/4 v5, 0x1

    goto :goto_e

    :cond_19
    const/4 v5, 0x0

    :goto_e
    move v3, v5

    .line 514
    .local v3, "refork":I
    or-int v5, v2, v0

    or-int/2addr v5, v3

    move v6, v5

    .local v6, "nextState":I
    if-eq v5, v2, :cond_1a

    .line 515
    invoke-virtual {v4, v2, v6}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 516
    :cond_1a
    const/4 v0, 0x2

    .line 517
    move-object v15, v4

    .line 518
    if-eqz v3, :cond_1b

    .line 519
    invoke-virtual {v4}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 521
    .end local v1    # "lt":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v3    # "refork":I
    .end local v6    # "nextState":I
    :cond_1b
    goto :goto_f

    .line 522
    .end local v18    # "th":I
    .end local v19    # "h":I
    .end local v21    # "sum":D
    .local v1, "th":I
    .local v6, "sum":D
    .restart local v9    # "h":I
    :cond_1c
    move/from16 v18, v1

    move-wide/from16 v21, v6

    move/from16 v19, v9

    .end local v1    # "th":I
    .end local v6    # "sum":D
    .end local v9    # "h":I
    .restart local v18    # "th":I
    .restart local v19    # "h":I
    .restart local v21    # "sum":D
    or-int v1, v2, v0

    invoke-virtual {v4, v2, v1}, Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 523
    goto :goto_10

    .line 524
    .end local v2    # "b":I
    :cond_1d
    :goto_f
    move/from16 v1, v18

    move/from16 v9, v19

    move-wide/from16 v6, v21

    const/4 v3, 0x4

    goto/16 :goto_b

    .line 469
    .end local v4    # "par":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v18    # "th":I
    .end local v21    # "sum":D
    .restart local v1    # "th":I
    .restart local v2    # "b":I
    :cond_1e
    move/from16 v18, v1

    .end local v1    # "th":I
    .restart local v18    # "th":I
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 419
    .end local v0    # "state":I
    .end local v2    # "b":I
    .end local v18    # "th":I
    .end local v19    # "h":I
    .restart local v1    # "th":I
    .restart local v9    # "h":I
    :cond_1f
    move/from16 v18, v1

    move/from16 v19, v9

    .end local v1    # "th":I
    .end local v9    # "h":I
    .restart local v18    # "th":I
    .restart local v19    # "h":I
    goto :goto_10

    .end local v18    # "th":I
    .end local v19    # "h":I
    .restart local v1    # "th":I
    :cond_20
    move/from16 v18, v1

    .line 527
    .end local v1    # "th":I
    .restart local v18    # "th":I
    :goto_10
    return-void

    .line 416
    .end local v10    # "l":I
    .end local v12    # "a":[D
    .end local v13    # "org":I
    .end local v14    # "fnc":I
    .end local v15    # "t":Ljava9/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v18    # "th":I
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
