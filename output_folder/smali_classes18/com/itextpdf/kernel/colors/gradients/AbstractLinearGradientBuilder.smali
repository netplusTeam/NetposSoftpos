.class public abstract Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
.super Ljava/lang/Object;
.source "AbstractLinearGradientBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final ZERO_EPSILON:D = 1.0E-10


# instance fields
.field private spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

.field private final stops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->stops:Ljava/util/List;

    .line 65
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    iput-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    return-void
.end method

.method private static adjustNormalizedStopsToCoverDomain(Ljava/util/List;[DLcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;)Ljava/util/List;
    .locals 28
    .param p1, "targetDomain"    # [D
    .param p2, "spreadMethod"    # Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;[D",
            "Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation

    .line 491
    .local p0, "normalizedStops":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v2, "adjustedStops":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 494
    .local v3, "lastColorStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v5

    .line 495
    .local v5, "originalIntervalEnd":D
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v8

    .line 496
    .local v8, "originalIntervalStart":D
    sub-double v10, v5, v8

    .line 498
    .local v10, "originalIntervalLength":D
    const-wide v12, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v12, v10, v12

    const/4 v13, 0x2

    if-gtz v12, :cond_0

    .line 499
    new-array v12, v13, [Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    new-instance v13, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    aget-wide v14, p1, v7

    sget-object v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v13, v3, v14, v15, v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    aput-object v13, v12, v7

    new-instance v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    const/4 v7, 0x1

    aget-wide v13, p1, v7

    sget-object v15, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v4, v3, v13, v14, v15}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    aput-object v4, v12, v7

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 503
    :cond_0
    aget-wide v14, p1, v7

    sub-double/2addr v14, v8

    div-double/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    .line 504
    .local v14, "startIntervalsShift":D
    mul-double v17, v10, v14

    add-double v17, v8, v17

    .line 505
    .local v17, "iterationOffset":D
    sget-object v4, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REFLECT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-ne v1, v4, :cond_1

    .line 506
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    rem-double v19, v19, v21

    const-wide/16 v21, 0x0

    cmpl-double v4, v19, v21

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v7

    .line 508
    .local v4, "isIterationInverse":Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v12

    const/16 v16, 0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    move v12, v7

    .line 510
    .local v12, "currentIterationIndex":I
    :goto_1
    move-wide/from16 v19, v17

    .line 511
    .local v19, "lastComputedOffset":D
    :goto_2
    aget-wide v21, p1, v16

    cmpg-double v21, v19, v21

    if-gtz v21, :cond_b

    .line 512
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v13, v21

    check-cast v13, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 513
    .local v13, "currentStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    if-eqz v4, :cond_3

    add-double v23, v17, v5

    .line 514
    invoke-virtual {v13}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v25

    sub-double v23, v23, v25

    goto :goto_3

    .line 515
    :cond_3
    invoke-virtual {v13}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v23

    add-double v23, v17, v23

    sub-double v23, v23, v8

    :goto_3
    move-wide/from16 v19, v23

    .line 516
    new-instance v7, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    move-object/from16 v23, v3

    .end local v3    # "lastColorStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .local v23, "lastColorStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    sget-object v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    move-wide/from16 v24, v5

    move-wide/from16 v5, v19

    .end local v19    # "lastComputedOffset":D
    .local v5, "lastComputedOffset":D
    .local v24, "originalIntervalEnd":D
    invoke-direct {v7, v13, v5, v6, v3}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    move-object v3, v7

    .line 519
    .local v3, "computedStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    const/4 v7, 0x0

    aget-wide v19, p1, v7

    cmpg-double v19, v5, v19

    if-gez v19, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_4

    .line 520
    invoke-interface {v2, v7, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 522
    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :goto_4
    if-eqz v4, :cond_6

    .line 526
    add-int/lit8 v12, v12, -0x1

    .line 527
    if-gez v12, :cond_5

    .line 528
    add-double v17, v17, v10

    .line 529
    const/4 v4, 0x0

    .line 530
    const/4 v12, 0x1

    const/16 v22, 0x2

    goto :goto_7

    .line 527
    :cond_5
    const/16 v22, 0x2

    goto :goto_7

    .line 533
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 534
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    if-ne v12, v7, :cond_9

    .line 535
    add-double v17, v17, v10

    .line 536
    sget-object v7, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REFLECT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-ne v1, v7, :cond_7

    move/from16 v7, v16

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    move v4, v7

    .line 537
    if-eqz v4, :cond_8

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    const/16 v22, 0x2

    add-int/lit8 v7, v7, -0x2

    goto :goto_6

    :cond_8
    const/16 v22, 0x2

    const/4 v7, 0x0

    :goto_6
    move v12, v7

    .end local v12    # "currentIterationIndex":I
    .local v7, "currentIterationIndex":I
    goto :goto_7

    .line 534
    .end local v7    # "currentIterationIndex":I
    .restart local v12    # "currentIterationIndex":I
    :cond_9
    const/16 v22, 0x2

    .line 541
    :goto_7
    if-eqz v4, :cond_a

    .line 542
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 547
    .local v7, "nextColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v7}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v26

    sub-double v0, v19, v26

    move/from16 v19, v4

    .end local v4    # "isIterationInverse":Z
    .local v19, "isIterationInverse":Z
    invoke-virtual {v7}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 548
    .end local v7    # "nextColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    goto :goto_8

    .line 549
    .end local v19    # "isIterationInverse":Z
    .restart local v4    # "isIterationInverse":Z
    :cond_a
    move/from16 v19, v4

    .end local v4    # "isIterationInverse":Z
    .restart local v19    # "isIterationInverse":Z
    invoke-virtual {v13}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v0

    invoke-virtual {v13}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 551
    .end local v3    # "computedStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .end local v13    # "currentStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v4, v19

    move/from16 v13, v22

    move-object/from16 v3, v23

    const/4 v7, 0x0

    move-wide/from16 v19, v5

    move-wide/from16 v5, v24

    goto/16 :goto_2

    .line 553
    .end local v23    # "lastColorStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .end local v24    # "originalIntervalEnd":D
    .local v3, "lastColorStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .restart local v4    # "isIterationInverse":Z
    .local v5, "originalIntervalEnd":D
    .local v19, "lastComputedOffset":D
    :cond_b
    return-object v2
.end method

.method private static adjustStopsForPadIfNeeded(Ljava/util/List;[D)V
    .locals 7
    .param p1, "coordinatesDomain"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;[D)V"
        }
    .end annotation

    .line 479
    .local p0, "stopsToConstruct":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 480
    .local v1, "firstStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    aget-wide v2, p1, v0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 481
    new-instance v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    aget-wide v3, p1, v0

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    invoke-interface {p0, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 483
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 484
    .local v0, "lastStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    aget-wide v3, p1, v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 485
    new-instance v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    aget-wide v4, p1, v2

    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v3, v0, v4, v5, v2}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_1
    return-void
.end method

.method private static constructFunction(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/function/PdfFunction;"
        }
    .end annotation

    .line 557
    .local p0, "toConstruct":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 559
    .local v1, "functionsAmount":I
    add-int/lit8 v3, v1, -0x1

    new-array v3, v3, [D

    .line 560
    .local v3, "bounds":[D
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    .local v4, "type2Functions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/function/PdfFunction;>;"
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 564
    .local v6, "nextStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v11

    .line 565
    .local v11, "domainStart":D
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 566
    move-object v8, v6

    .line 567
    .local v8, "currentStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 568
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v6}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v13

    aput-wide v13, v3, v9

    .line 569
    invoke-static {v8, v6}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->constructSingleGradientSegmentFunction(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 572
    .end local v7    # "i":I
    .end local v8    # "currentStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    :cond_0
    move-object v13, v6

    .line 573
    .local v13, "currentStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 574
    .end local v6    # "nextStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .local v14, "nextStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-static {v13, v14}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->constructSingleGradientSegmentFunction(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {v14}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v15

    .line 577
    .local v15, "domainEnd":D
    mul-int/lit8 v6, v1, 0x2

    new-array v10, v6, [D

    .line 578
    .local v10, "encode":[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v10

    if-ge v6, v7, :cond_1

    .line 579
    const-wide/16 v7, 0x0

    aput-wide v7, v10, v6

    .line 580
    add-int/lit8 v7, v6, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v10, v7

    .line 578
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 583
    .end local v6    # "i":I
    :cond_1
    new-instance v17, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v7, 0x2

    new-array v7, v7, [D

    aput-wide v11, v7, v5

    aput-wide v15, v7, v2

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    const/4 v7, 0x0

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v9, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    move-object/from16 v5, v17

    move-object v8, v4

    move-object/from16 v18, v10

    .end local v10    # "encode":[D
    .local v18, "encode":[D
    move-object v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-object v17
.end method

.method private static constructSingleGradientSegmentFunction(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;
    .locals 11
    .param p0, "from"    # Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .param p1, "to"    # Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 588
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 589
    .local v0, "exponent":D
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getRgbArray()[F

    move-result-object v2

    .line 590
    .local v2, "fromColor":[F
    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getRgbArray()[F

    move-result-object v3

    .line 591
    .local v3, "toColor":[F
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_BETWEEN_COLORS:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v4, v5, :cond_2

    .line 592
    invoke-virtual {p0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v4

    .line 593
    .local v4, "hintOffset":D
    const-wide v6, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_0

    .line 594
    move-object v2, v3

    goto :goto_0

    .line 595
    :cond_0
    const-wide v6, 0x3feffffffff24190L    # 0.9999999999

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_1

    .line 596
    move-object v3, v2

    goto :goto_0

    .line 599
    :cond_1
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double v0, v6, v8

    .line 602
    .end local v4    # "hintOffset":D
    :cond_2
    :goto_0
    new-instance v10, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    const/4 v6, 0x0

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v7, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v8, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v9, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfNumber;)V

    return-object v10

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static copyStopsAndNormalizeAbsoluteOffsets(Ljava/util/List;D)Ljava/util/List;
    .locals 13
    .param p1, "baseVectorLength"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation

    .line 438
    .local p0, "toNormalize":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 439
    .local v0, "lastUsedOffset":D
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 440
    .local v2, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 441
    .local v4, "stop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v5

    .line 442
    .local v5, "offset":D
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    move-result-object v7

    .line 443
    .local v7, "offsetType":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;
    sget-object v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->ABSOLUTE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-ne v7, v8, :cond_0

    .line 444
    sget-object v7, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    .line 445
    div-double/2addr v5, p1

    .line 448
    :cond_0
    sget-object v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-ne v7, v8, :cond_2

    .line 449
    cmpg-double v8, v5, v0

    if-gez v8, :cond_1

    .line 450
    move-wide v5, v0

    .line 452
    :cond_1
    move-wide v0, v5

    .line 455
    :cond_2
    new-instance v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    .line 457
    .local v8, "result":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v9

    .line 458
    .local v9, "hintOffset":D
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v11

    .line 459
    .local v11, "hintOffsetType":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;
    sget-object v12, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->ABSOLUTE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v11, v12, :cond_3

    .line 460
    sget-object v11, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    .line 461
    div-double/2addr v9, p1

    .line 464
    :cond_3
    sget-object v12, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v11, v12, :cond_5

    .line 465
    cmpg-double v12, v9, v0

    if-gez v12, :cond_4

    .line 466
    move-wide v9, v0

    .line 468
    :cond_4
    move-wide v0, v9

    .line 471
    :cond_5
    invoke-virtual {v8, v9, v10, v11}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 472
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    .end local v4    # "stop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .end local v5    # "offset":D
    .end local v7    # "offsetType":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;
    .end local v8    # "result":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .end local v9    # "hintOffset":D
    .end local v11    # "hintOffsetType":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;
    goto :goto_0

    .line 474
    :cond_6
    return-object v2
.end method

.method private static createAxialShading([Lcom/itextpdf/kernel/geom/Point;Ljava/util/List;Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;
    .locals 20
    .param p0, "baseCoordinatesVector"    # [Lcom/itextpdf/kernel/geom/Point;
    .param p2, "spreadMethod"    # Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;
    .param p3, "targetBoundingBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/itextpdf/kernel/geom/Point;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;",
            "Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ")",
            "Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;"
        }
    .end annotation

    .line 276
    .local p1, "stops":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    aget-object v5, v0, v4

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Point;->distance(Lcom/itextpdf/kernel/geom/Point;)D

    move-result-wide v5

    .line 278
    .local v5, "baseVectorLength":D
    move-object/from16 v3, p1

    invoke-static {v3, v5, v6}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeStops(Ljava/util/List;D)Ljava/util/List;

    move-result-object v7

    .line 279
    .local v7, "stopsToConstruct":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    const/4 v8, 0x2

    new-array v9, v8, [D

    fill-array-data v9, :array_0

    .line 281
    .local v9, "coordinatesDomain":[D
    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v12, v5, v10

    const/4 v13, 0x0

    if-ltz v12, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v2, :cond_0

    move-object/from16 v12, p3

    move-wide/from16 v16, v5

    goto/16 :goto_3

    .line 293
    :cond_0
    move-object/from16 v12, p3

    invoke-static {v0, v12}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->evaluateCoveringDomain([Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Rectangle;)[D

    move-result-object v9

    .line 294
    sget-object v8, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REPEAT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-eq v1, v8, :cond_5

    sget-object v8, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->REFLECT:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-ne v1, v8, :cond_1

    move-wide/from16 v16, v5

    goto :goto_1

    .line 297
    :cond_1
    sget-object v8, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->PAD:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-ne v1, v8, :cond_2

    .line 298
    invoke-static {v7, v9}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->adjustStopsForPadIfNeeded(Ljava/util/List;[D)V

    move-wide/from16 v16, v5

    goto :goto_2

    .line 301
    :cond_2
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v14

    .line 302
    .local v14, "firstStopOffset":D
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    move-wide/from16 v16, v5

    .end local v5    # "baseVectorLength":D
    .local v16, "baseVectorLength":D
    invoke-virtual {v8}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v4

    .line 303
    .local v4, "lastStopOffset":D
    sub-double v18, v4, v14

    cmpg-double v6, v18, v10

    if-ltz v6, :cond_4

    aget-wide v10, v9, v2

    cmpg-double v6, v10, v14

    if-lez v6, :cond_4

    const/4 v6, 0x0

    aget-wide v10, v9, v6

    cmpl-double v8, v10, v4

    if-ltz v8, :cond_3

    goto :goto_0

    .line 308
    :cond_3
    aget-wide v10, v9, v6

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    aput-wide v10, v9, v6

    .line 309
    aget-wide v10, v9, v2

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    aput-wide v10, v9, v2

    goto :goto_2

    .line 306
    :cond_4
    :goto_0
    return-object v13

    .line 294
    .end local v4    # "lastStopOffset":D
    .end local v14    # "firstStopOffset":D
    .end local v16    # "baseVectorLength":D
    .restart local v5    # "baseVectorLength":D
    :cond_5
    move-wide/from16 v16, v5

    .line 295
    .end local v5    # "baseVectorLength":D
    .restart local v16    # "baseVectorLength":D
    :goto_1
    invoke-static {v7, v9, v1}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->adjustNormalizedStopsToCoverDomain(Ljava/util/List;[DLcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;)Ljava/util/List;

    move-result-object v7

    .line 311
    :goto_2
    const/4 v4, 0x0

    aget-wide v4, v9, v4

    aget-wide v10, v9, v2

    cmpg-double v2, v4, v10

    if-gtz v2, :cond_6

    .line 313
    invoke-static {v9, v0}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->createCoordinatesForNewDomain([D[Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v2

    .local v2, "actualCoordinates":[Lcom/itextpdf/kernel/geom/Point;
    goto :goto_4

    .line 311
    .end local v2    # "actualCoordinates":[Lcom/itextpdf/kernel/geom/Point;
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 281
    .end local v16    # "baseVectorLength":D
    .restart local v5    # "baseVectorLength":D
    :cond_7
    move-object/from16 v12, p3

    move-wide/from16 v16, v5

    .line 283
    .end local v5    # "baseVectorLength":D
    .restart local v16    # "baseVectorLength":D
    :goto_3
    sget-object v4, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-ne v1, v4, :cond_8

    .line 284
    return-object v13

    .line 286
    :cond_8
    new-array v4, v8, [Lcom/itextpdf/kernel/geom/Point;

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v6

    float-to-double v10, v6

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    float-to-double v13, v6

    invoke-direct {v5, v10, v11, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    .line 287
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v6

    float-to-double v10, v6

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v6

    float-to-double v13, v6

    invoke-direct {v5, v10, v11, v13, v14}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    aput-object v5, v4, v2

    .line 289
    .local v4, "actualCoordinates":[Lcom/itextpdf/kernel/geom/Point;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 290
    .local v5, "lastColorStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    new-array v6, v8, [Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    new-instance v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    const-wide/16 v10, 0x0

    sget-object v13, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v8, v5, v10, v11, v13}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    const/4 v10, 0x0

    aput-object v8, v6, v10

    new-instance v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sget-object v13, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v8, v5, v10, v11, v13}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    aput-object v8, v6, v2

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 292
    .end local v5    # "lastColorStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    move-object v2, v4

    .line 316
    .end local v4    # "actualCoordinates":[Lcom/itextpdf/kernel/geom/Point;
    .restart local v2    # "actualCoordinates":[Lcom/itextpdf/kernel/geom/Point;
    :goto_4
    new-instance v4, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;

    new-instance v5, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Rgb;-><init>()V

    .line 318
    invoke-static {v2}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->createCoordsPdfArray([Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    .line 320
    invoke-static {v7}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->constructFunction(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;

    move-result-object v10

    invoke-direct {v4, v5, v6, v8, v10}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V

    .line 316
    return-object v4

    nop

    :array_0
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method protected static createCoordinatesForNewDomain([D[Lcom/itextpdf/kernel/geom/Point;)[Lcom/itextpdf/kernel/geom/Point;
    .locals 13
    .param p0, "newDomain"    # [D
    .param p1, "baseVector"    # [Lcom/itextpdf/kernel/geom/Point;

    .line 262
    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    sub-double/2addr v1, v4

    .line 263
    .local v1, "xDiff":D
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v4

    aget-object v6, p1, v3

    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 265
    .local v4, "yDiff":D
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/itextpdf/kernel/geom/Point;

    aget-object v7, p1, v3

    .line 266
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Point;->getLocation()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v7

    aput-object v7, v6, v3

    aget-object v7, p1, v0

    .line 267
    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Point;->getLocation()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v7

    aput-object v7, v6, v0

    .line 269
    .local v6, "targetCoords":[Lcom/itextpdf/kernel/geom/Point;
    aget-object v7, v6, v3

    aget-wide v8, p0, v3

    mul-double/2addr v8, v1

    aget-wide v10, p0, v3

    mul-double/2addr v10, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/itextpdf/kernel/geom/Point;->translate(DD)V

    .line 270
    aget-object v3, v6, v0

    aget-wide v7, p0, v0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v9

    mul-double/2addr v7, v1

    aget-wide v11, p0, v0

    sub-double/2addr v11, v9

    mul-double/2addr v11, v4

    invoke-virtual {v3, v7, v8, v11, v12}, Lcom/itextpdf/kernel/geom/Point;->translate(DD)V

    .line 271
    return-object v6
.end method

.method private static createCoordsPdfArray([Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 6
    .param p0, "coordsPoints"    # [Lcom/itextpdf/kernel/geom/Point;

    .line 607
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 609
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v2, 0x4

    new-array v2, v2, [D

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v4

    aput-wide v4, v2, v3

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    aget-object v3, p0, v5

    .line 610
    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v3

    aput-wide v3, v2, v1

    const/4 v1, 0x3

    aget-object v3, p0, v5

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v3

    aput-wide v3, v2, v1

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    .line 609
    return-object v0

    .line 607
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected static evaluateCoveringDomain([Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Rectangle;)[D
    .locals 28
    .param p0, "coords"    # [Lcom/itextpdf/kernel/geom/Point;
    .param p1, "toCover"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 221
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 222
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    return-object v0

    .line 224
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v1}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 225
    .local v1, "transform":Lcom/itextpdf/kernel/geom/AffineTransform;
    const/4 v2, 0x0

    aget-object v3, p0, v2

    const/4 v4, 0x1

    aget-object v5, p0, v4

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Point;->distance(Lcom/itextpdf/kernel/geom/Point;)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    .line 226
    .local v5, "scale":D
    aget-object v3, p0, v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v9

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v11

    sub-double/2addr v9, v11

    neg-double v9, v9

    mul-double/2addr v9, v5

    .line 227
    .local v9, "sin":D
    aget-object v3, p0, v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v11

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v13

    sub-double/2addr v11, v13

    mul-double/2addr v11, v5

    .line 228
    .local v11, "cos":D
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, v13, v15

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    const-wide/16 v17, 0x0

    if-gez v3, :cond_2

    .line 229
    const-wide/16 v11, 0x0

    .line 230
    cmpl-double v3, v9, v17

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide v7, v13

    :goto_0
    move-wide v9, v7

    goto :goto_2

    .line 231
    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    cmpg-double v3, v19, v15

    if-gez v3, :cond_4

    .line 232
    const-wide/16 v9, 0x0

    .line 233
    cmpl-double v3, v11, v17

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move-wide v7, v13

    :goto_1
    move-wide v11, v7

    .line 235
    :cond_4
    :goto_2
    new-instance v3, Lcom/itextpdf/kernel/geom/AffineTransform;

    neg-double v7, v9

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object v13, v3

    move-wide v14, v11

    move-wide/from16 v16, v9

    move-wide/from16 v18, v7

    move-wide/from16 v20, v11

    invoke-direct/range {v13 .. v25}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>(DDDDDD)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 237
    invoke-virtual {v1, v5, v6, v5, v6}, Lcom/itextpdf/kernel/geom/AffineTransform;->scale(DD)V

    .line 238
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v7

    neg-double v7, v7

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v13

    neg-double v13, v13

    invoke-virtual {v1, v7, v8, v13, v14}, Lcom/itextpdf/kernel/geom/AffineTransform;->translate(DD)V

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/geom/Rectangle;->toPointsArray()[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    .line 241
    .local v3, "rectanglePoints":[Lcom/itextpdf/kernel/geom/Point;
    aget-object v7, v3, v2

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v13

    .line 242
    .local v13, "minX":D
    move-wide v15, v13

    .line 243
    .local v15, "maxX":D
    const/4 v7, 0x1

    move-wide/from16 v26, v5

    move-wide v4, v15

    move-wide/from16 v16, v26

    .end local v5    # "scale":D
    .end local v15    # "maxX":D
    .local v4, "maxX":D
    .local v7, "i":I
    .local v16, "scale":D
    :goto_3
    array-length v6, v3

    if-ge v7, v6, :cond_5

    .line 244
    aget-object v6, v3, v7

    invoke-virtual {v1, v6, v8}, Lcom/itextpdf/kernel/geom/AffineTransform;->transform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    move-wide/from16 v18, v9

    .end local v9    # "sin":D
    .local v18, "sin":D
    invoke-virtual {v6}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v8

    .line 245
    .local v8, "currentX":D
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    .line 246
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 243
    .end local v8    # "currentX":D
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v9, v18

    const/4 v8, 0x0

    goto :goto_3

    .line 249
    .end local v7    # "i":I
    .end local v18    # "sin":D
    .restart local v9    # "sin":D
    :cond_5
    new-array v0, v0, [D

    aput-wide v13, v0, v2

    const/4 v2, 0x1

    aput-wide v4, v0, v2

    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method private static normalizeAutoStops(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;)V"
        }
    .end annotation

    .line 365
    .local p0, "toNormalize":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-ne v1, v2, :cond_7

    .line 367
    const/4 v1, 0x1

    .line 368
    .local v1, "firstAutoStopIndex":I
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 369
    .local v0, "firstStopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v2, v3, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v2

    .line 371
    .local v2, "prevOffset":D
    :goto_0
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 372
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 373
    .local v12, "currentStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v12}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->AUTO:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-ne v5, v6, :cond_1

    .line 374
    invoke-virtual {v12}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v5, v6, :cond_4

    .line 375
    invoke-virtual {v12}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v13

    .line 376
    .local v13, "hintOffset":D
    add-int/lit8 v7, v4, 0x1

    move-object v5, p0

    move v6, v1

    move-wide v8, v2

    move-wide v10, v13

    invoke-static/range {v5 .. v11}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeAutoStops(Ljava/util/List;IIDD)V

    .line 377
    move-wide v2, v13

    .line 378
    add-int/lit8 v1, v4, 0x1

    .line 379
    .end local v13    # "hintOffset":D
    goto :goto_3

    .line 381
    :cond_1
    if-ge v1, v4, :cond_2

    .line 383
    invoke-virtual {v12}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v13

    .line 384
    .local v13, "offset":D
    move-object v5, p0

    move v6, v1

    move v7, v4

    move-wide v8, v2

    move-wide v10, v13

    invoke-static/range {v5 .. v11}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeAutoStops(Ljava/util/List;IIDD)V

    .line 386
    .end local v13    # "offset":D
    :cond_2
    add-int/lit8 v1, v4, 0x1

    .line 387
    invoke-virtual {v12}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v5, v6, :cond_3

    .line 388
    invoke-virtual {v12}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v5

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v5

    :goto_2
    move-wide v2, v5

    .line 371
    .end local v12    # "currentStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 393
    .end local v4    # "i":I
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 394
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 395
    .local v12, "lastStopOffset":D
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move-object v5, p0

    move v6, v1

    move-wide v8, v2

    move-wide v10, v12

    invoke-static/range {v5 .. v11}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeAutoStops(Ljava/util/List;IIDD)V

    .line 397
    .end local v12    # "lastStopOffset":D
    :cond_6
    return-void

    .line 365
    .end local v0    # "firstStopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .end local v1    # "firstAutoStopIndex":I
    .end local v2    # "prevOffset":D
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static normalizeAutoStops(Ljava/util/List;IIDD)V
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "prevOffset"    # D
    .param p5, "nextOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;IIDD)V"
        }
    .end annotation

    .line 401
    .local p0, "toNormalizeList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    if-lt p2, p1, :cond_2

    .line 403
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 404
    .local v0, "intervalsCount":I
    sub-double v1, p5, p3

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 405
    .local v1, "offsetShift":D
    move-wide v3, p3

    .line 406
    .local v3, "currentOffset":D
    move v5, p1

    .local v5, "i":I
    :goto_0
    if-ge v5, p2, :cond_1

    .line 407
    add-double/2addr v3, v1

    .line 408
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 410
    .local v6, "currentAutoStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->AUTO:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-ne v7, v8, :cond_0

    .line 412
    sget-object v7, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-virtual {v6, v3, v4, v7}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setOffset(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 406
    .end local v6    # "currentAutoStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 410
    .restart local v6    # "currentAutoStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    :cond_0
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 414
    .end local v5    # "i":I
    .end local v6    # "currentAutoStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    :cond_1
    return-void

    .line 401
    .end local v0    # "intervalsCount":I
    .end local v1    # "offsetShift":D
    .end local v3    # "currentOffset":D
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static normalizeFirstStopOffset(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;)V"
        }
    .end annotation

    .line 418
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 419
    .local v0, "firstStop":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->AUTO:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-eq v1, v2, :cond_0

    .line 420
    return-void

    .line 422
    :cond_0
    const-wide/16 v1, 0x0

    .line 423
    .local v1, "firstStopOffset":D
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 424
    .local v4, "stopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    if-ne v5, v6, :cond_1

    .line 425
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v1

    .line 426
    goto :goto_1

    .line 427
    :cond_1
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v5, v6, :cond_2

    .line 428
    invoke-virtual {v4}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v1

    .line 429
    goto :goto_1

    .line 431
    .end local v4    # "stopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    :cond_2
    goto :goto_0

    .line 432
    :cond_3
    :goto_1
    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 433
    sget-object v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setOffset(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 434
    return-void
.end method

.method private static normalizeHintsOffsets(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;)V"
        }
    .end annotation

    .line 345
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 346
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 347
    .local v1, "stopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffsetType()Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_ON_GRADIENT:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    if-ne v4, v5, :cond_1

    .line 348
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v4

    .line 349
    .local v4, "currentStopOffset":D
    add-int/lit8 v6, v0, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getOffset()D

    move-result-wide v6

    .line 350
    .local v6, "nextStopOffset":D
    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    .line 351
    invoke-virtual {v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->getHintOffset()D

    move-result-wide v2

    sub-double/2addr v2, v4

    sub-double v8, v6, v4

    div-double/2addr v2, v8

    .line 353
    .local v2, "hintOffset":D
    sget-object v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->RELATIVE_BETWEEN_COLORS:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    invoke-virtual {v1, v2, v3, v8}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 354
    .end local v2    # "hintOffset":D
    goto :goto_1

    .line 356
    :cond_0
    sget-object v8, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    invoke-virtual {v1, v2, v3, v8}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 345
    .end local v1    # "stopColor":Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;
    .end local v4    # "currentStopOffset":D
    .end local v6    # "nextStopOffset":D
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    sget-object v1, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;

    invoke-virtual {v0, v2, v3, v1}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;->setHint(DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$HintOffsetType;)Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 362
    return-void
.end method

.method private static normalizeStops(Ljava/util/List;D)Ljava/util/List;
    .locals 7
    .param p1, "baseVectorLength"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation

    .line 327
    .local p0, "toNormalize":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 328
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    const/4 v2, 0x0

    new-instance v3, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;->RELATIVE:Lcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;-><init>(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;DLcom/itextpdf/kernel/colors/gradients/GradientColorStop$OffsetType;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 332
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->copyStopsAndNormalizeAbsoluteOffsets(Ljava/util/List;D)Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;>;"
    invoke-static {v0}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeFirstStopOffset(Ljava/util/List;)V

    .line 336
    invoke-static {v0}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeAutoStops(Ljava/util/List;)V

    .line 338
    invoke-static {v0}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->normalizeHintsOffsets(Ljava/util/List;)V

    .line 340
    return-object v0
.end method


# virtual methods
.method public addColorStop(Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    .locals 1
    .param p1, "gradientColorStop"    # Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->stops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    return-object p0
.end method

.method public buildColor(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/colors/Color;
    .locals 11
    .param p1, "targetBoundingBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "contextTransform"    # Lcom/itextpdf/kernel/geom/AffineTransform;
    .param p3, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->getGradientVector(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)[Lcom/itextpdf/kernel/geom/Point;

    move-result-object v0

    .line 134
    .local v0, "baseCoordinatesVector":[Lcom/itextpdf/kernel/geom/Point;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->stops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 140
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/geom/AffineTransform;

    invoke-direct {v2}, Lcom/itextpdf/kernel/geom/AffineTransform;-><init>()V

    .line 141
    .local v2, "shadingTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    if-eqz p2, :cond_1

    .line 142
    invoke-virtual {v2, p2}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V

    .line 145
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->getCurrentSpaceToGradientVectorSpaceTransformation(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/geom/AffineTransform;

    move-result-object v3

    .line 147
    .local v3, "gradientTransformation":Lcom/itextpdf/kernel/geom/AffineTransform;
    if-eqz v3, :cond_3

    .line 149
    if-eqz p1, :cond_2

    .line 150
    const/4 v4, 0x4

    :try_start_0
    new-array v4, v4, [Lcom/itextpdf/kernel/geom/Point;

    const/4 v5, 0x0

    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    .line 152
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v9

    float-to-double v9, v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 151
    invoke-virtual {v3, v6, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->inverseTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    .line 154
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getLeft()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v9

    float-to-double v9, v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 153
    invoke-virtual {v3, v6, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->inverseTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    .line 156
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getBottom()F

    move-result v9

    float-to-double v9, v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 155
    invoke-virtual {v3, v6, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->inverseTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/itextpdf/kernel/geom/Point;

    .line 158
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getRight()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Rectangle;->getTop()F

    move-result v9

    float-to-double v9, v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    .line 157
    invoke-virtual {v3, v6, v1}, Lcom/itextpdf/kernel/geom/AffineTransform;->inverseTransform(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)Lcom/itextpdf/kernel/geom/Point;

    move-result-object v6

    aput-object v6, v4, v5

    .line 150
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/kernel/geom/Rectangle;->calculateBBox(Ljava/util/List;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v4

    move-object p1, v4

    .line 161
    :cond_2
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/geom/AffineTransform;->concatenate(Lcom/itextpdf/kernel/geom/AffineTransform;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v4

    .line 163
    .local v4, "e":Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    const-string v6, "Unable to invert gradient transformation, ignoring it"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 167
    .end local v4    # "e":Lcom/itextpdf/kernel/geom/NoninvertibleTransformException;
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->stops:Ljava/util/List;

    iget-object v5, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    invoke-static {v0, v4, v5, p1}, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->createAxialShading([Lcom/itextpdf/kernel/geom/Point;Ljava/util/List;Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;

    move-result-object v4

    .line 169
    .local v4, "axial":Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;
    if-nez v4, :cond_4

    .line 170
    return-object v1

    .line 173
    :cond_4
    new-instance v1, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;

    invoke-direct {v1, v4}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;)V

    .line 174
    .local v1, "shading":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/geom/AffineTransform;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_5

    .line 175
    const/4 v5, 0x6

    new-array v5, v5, [D

    .line 176
    .local v5, "matrix":[D
    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/geom/AffineTransform;->getMatrix([D)V

    .line 177
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([D)V

    invoke-virtual {v1, v6}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;->setMatrix(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 179
    .end local v5    # "matrix":[D
    :cond_5
    new-instance v5, Lcom/itextpdf/kernel/colors/PatternColor;

    invoke-direct {v5, v1}, Lcom/itextpdf/kernel/colors/PatternColor;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;)V

    return-object v5

    .line 136
    .end local v1    # "shading":Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;
    .end local v2    # "shadingTransform":Lcom/itextpdf/kernel/geom/AffineTransform;
    .end local v3    # "gradientTransformation":Lcom/itextpdf/kernel/geom/AffineTransform;
    .end local v4    # "axial":Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;
    :cond_6
    :goto_1
    return-object v1
.end method

.method public getColorStops()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/colors/gradients/GradientColorStop;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->stops:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getCurrentSpaceToGradientVectorSpaceTransformation(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)Lcom/itextpdf/kernel/geom/AffineTransform;
    .locals 1
    .param p1, "targetBoundingBox"    # Lcom/itextpdf/kernel/geom/Rectangle;
    .param p2, "contextTransform"    # Lcom/itextpdf/kernel/geom/AffineTransform;

    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getGradientVector(Lcom/itextpdf/kernel/geom/Rectangle;Lcom/itextpdf/kernel/geom/AffineTransform;)[Lcom/itextpdf/kernel/geom/Point;
.end method

.method public getSpreadMethod()Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    return-object v0
.end method

.method public setSpreadMethod(Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;)Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;
    .locals 1
    .param p1, "gradientSpreadMethod"    # Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    .line 92
    iget-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;->NONE:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    iput-object v0, p0, Lcom/itextpdf/kernel/colors/gradients/AbstractLinearGradientBuilder;->spreadMethod:Lcom/itextpdf/kernel/colors/gradients/GradientSpreadMethod;

    .line 97
    :goto_0
    return-object p0
.end method
