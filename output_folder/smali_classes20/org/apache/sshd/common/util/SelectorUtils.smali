.class public final Lorg/apache/sshd/common/util/SelectorUtils;
.super Ljava/lang/Object;
.source "SelectorUtils.java"


# static fields
.field public static final ANT_HANDLER_PREFIX:Ljava/lang/String; = "%ant["

.field public static final PATTERN_HANDLER_PREFIX:Ljava/lang/String; = "["

.field public static final PATTERN_HANDLER_SUFFIX:Ljava/lang/String; = "]"

.field public static final REGEX_HANDLER_PREFIX:Ljava/lang/String; = "%regex["


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static applySlashifyRules(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "sepChar"    # C

    .line 583
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    return-object p0

    .line 587
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 588
    .local v0, "curPos":I
    if-gez v0, :cond_1

    .line 589
    return-object p0

    .line 592
    :cond_1
    const/4 v1, 0x0

    .line 593
    .local v1, "lastPos":I
    const/4 v2, 0x0

    .line 594
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 595
    add-int/lit8 v0, v0, 0x1

    .line 603
    move v3, v0

    .line 604
    .local v3, "nextPos":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_2

    .line 605
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 612
    :cond_2
    sub-int v4, v3, v0

    .line 613
    .local v4, "seqLen":I
    if-lez v4, :cond_5

    .line 614
    if-nez v2, :cond_3

    .line 615
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v5

    .line 618
    :cond_3
    if-ge v1, v0, :cond_4

    .line 619
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 620
    .local v5, "clrText":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .end local v5    # "clrText":Ljava/lang/String;
    :cond_4
    move v1, v3

    .line 626
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_6

    .line 627
    goto :goto_2

    .line 630
    :cond_6
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 631
    if-ge v0, v3, :cond_7

    .line 632
    goto :goto_2

    .line 634
    .end local v3    # "nextPos":I
    .end local v4    # "seqLen":I
    :cond_7
    goto :goto_0

    .line 637
    :cond_8
    :goto_2
    if-eqz v2, :cond_a

    .line 638
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 639
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "clrText":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .end local v3    # "clrText":Ljava/lang/String;
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 655
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_b

    .line 656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 658
    :cond_b
    return-object p0
.end method

.method public static equals(CCZ)Z
    .locals 3
    .param p0, "c1"    # C
    .param p1, "c2"    # C
    .param p2, "isCaseSensitive"    # Z

    .line 503
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 504
    return v0

    .line 506
    :cond_0
    if-nez p2, :cond_2

    .line 508
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 509
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-ne v1, v2, :cond_2

    .line 510
    :cond_1
    return v0

    .line 513
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isWindowsDriveSpecified(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 702
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/util/SelectorUtils;->isWindowsDriveSpecified(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public static isWindowsDriveSpecified(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 706
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p2, v1, :cond_4

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 711
    .local v1, "drive":C
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_3

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    .line 707
    .end local v1    # "drive":C
    :cond_4
    :goto_0
    return v0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 348
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 19
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isCaseSensitive"    # Z

    .line 368
    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 369
    .local v1, "patArr":[C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 370
    .local v2, "strArr":[C
    const/4 v3, 0x0

    .line 371
    .local v3, "patIdxStart":I
    array-length v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 372
    .local v4, "patIdxEnd":I
    const/4 v6, 0x0

    .line 373
    .local v6, "strIdxStart":I
    array-length v7, v2

    sub-int/2addr v7, v5

    .line 376
    .local v7, "strIdxEnd":I
    const/4 v8, 0x0

    .line 377
    .local v8, "containsStar":Z
    array-length v9, v1

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    const/16 v12, 0x2a

    if-ge v11, v9, :cond_1

    aget-char v13, v1, v11

    .line 378
    .local v13, "aPatArr":C
    if-ne v13, v12, :cond_0

    .line 379
    const/4 v8, 0x1

    .line 380
    goto :goto_1

    .line 377
    .end local v13    # "aPatArr":C
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 384
    :cond_1
    :goto_1
    const/16 v9, 0x3f

    if-nez v8, :cond_5

    .line 386
    if-eq v4, v7, :cond_2

    .line 387
    return v10

    .line 389
    :cond_2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-gt v11, v4, :cond_4

    .line 390
    aget-char v12, v1, v11

    .line 391
    .local v12, "ch":C
    if-eq v12, v9, :cond_3

    aget-char v13, v2, v11

    invoke-static {v12, v13, v0}, Lorg/apache/sshd/common/util/SelectorUtils;->equals(CCZ)Z

    move-result v13

    if-nez v13, :cond_3

    .line 392
    return v10

    .line 389
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 395
    .end local v11    # "i":I
    .end local v12    # "ch":C
    :cond_4
    return v5

    .line 398
    :cond_5
    if-nez v4, :cond_6

    .line 399
    return v5

    .line 404
    :cond_6
    :goto_3
    aget-char v11, v1, v3

    move v13, v11

    .local v13, "ch":C
    if-eq v11, v12, :cond_8

    if-gt v6, v7, :cond_8

    .line 405
    if-eq v13, v9, :cond_7

    aget-char v11, v2, v6

    invoke-static {v13, v11, v0}, Lorg/apache/sshd/common/util/SelectorUtils;->equals(CCZ)Z

    move-result v11

    if-nez v11, :cond_7

    .line 406
    return v10

    .line 408
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 409
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 413
    :cond_8
    if-le v6, v7, :cond_b

    .line 416
    move v9, v3

    .local v9, "i":I
    :goto_4
    if-gt v9, v4, :cond_a

    .line 417
    aget-char v11, v1, v9

    if-eq v11, v12, :cond_9

    .line 418
    return v10

    .line 416
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 421
    .end local v9    # "i":I
    :cond_a
    return v5

    .line 426
    :cond_b
    :goto_5
    aget-char v11, v1, v4

    move v13, v11

    if-eq v11, v12, :cond_d

    if-gt v6, v7, :cond_d

    .line 427
    if-eq v13, v9, :cond_c

    aget-char v11, v2, v7

    invoke-static {v13, v11, v0}, Lorg/apache/sshd/common/util/SelectorUtils;->equals(CCZ)Z

    move-result v11

    if-nez v11, :cond_c

    .line 428
    return v10

    .line 430
    :cond_c
    add-int/lit8 v4, v4, -0x1

    .line 431
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 435
    :cond_d
    if-le v6, v7, :cond_10

    .line 438
    move v9, v3

    .restart local v9    # "i":I
    :goto_6
    if-gt v9, v4, :cond_f

    .line 439
    aget-char v11, v1, v9

    if-eq v11, v12, :cond_e

    .line 440
    return v10

    .line 438
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 443
    .end local v9    # "i":I
    :cond_f
    return v5

    .line 447
    :cond_10
    :goto_7
    if-eq v3, v4, :cond_18

    if-gt v6, v7, :cond_18

    .line 448
    const/4 v11, -0x1

    .line 449
    .local v11, "patIdxTmp":I
    add-int/lit8 v14, v3, 0x1

    .local v14, "i":I
    :goto_8
    if-gt v14, v4, :cond_12

    .line 450
    aget-char v15, v1, v14

    if-ne v15, v12, :cond_11

    .line 451
    move v11, v14

    .line 452
    goto :goto_9

    .line 449
    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 455
    .end local v14    # "i":I
    :cond_12
    :goto_9
    add-int/lit8 v14, v3, 0x1

    if-ne v11, v14, :cond_13

    .line 457
    add-int/lit8 v3, v3, 0x1

    .line 458
    goto :goto_7

    .line 462
    :cond_13
    sub-int v14, v11, v3

    sub-int/2addr v14, v5

    .line 463
    .local v14, "patLength":I
    sub-int v15, v7, v6

    add-int/2addr v15, v5

    .line 464
    .local v15, "strLength":I
    const/16 v16, -0x1

    .line 465
    .local v16, "foundIdx":I
    const/16 v17, 0x0

    move/from16 v12, v17

    .local v12, "i":I
    :goto_a
    sub-int v10, v15, v14

    if-gt v12, v10, :cond_16

    .line 466
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_b
    if-ge v10, v14, :cond_15

    .line 467
    add-int v18, v3, v10

    add-int/lit8 v18, v18, 0x1

    aget-char v13, v1, v18

    .line 468
    if-eq v13, v9, :cond_14

    add-int v18, v6, v12

    add-int v18, v18, v10

    aget-char v9, v2, v18

    invoke-static {v13, v9, v0}, Lorg/apache/sshd/common/util/SelectorUtils;->equals(CCZ)Z

    move-result v9

    if-nez v9, :cond_14

    .line 469
    nop

    .line 465
    .end local v10    # "j":I
    add-int/lit8 v12, v12, 0x1

    const/16 v9, 0x3f

    const/4 v10, 0x0

    goto :goto_a

    .line 466
    .restart local v10    # "j":I
    :cond_14
    add-int/lit8 v10, v10, 0x1

    const/16 v9, 0x3f

    goto :goto_b

    .line 473
    .end local v10    # "j":I
    :cond_15
    add-int v16, v6, v12

    .line 474
    move/from16 v9, v16

    goto :goto_c

    .line 465
    :cond_16
    move/from16 v9, v16

    .line 477
    .end local v12    # "i":I
    .end local v16    # "foundIdx":I
    .local v9, "foundIdx":I
    :goto_c
    const/4 v10, -0x1

    if-ne v9, v10, :cond_17

    .line 478
    const/4 v5, 0x0

    return v5

    .line 481
    :cond_17
    move v3, v11

    .line 482
    add-int v6, v9, v14

    .line 483
    .end local v9    # "foundIdx":I
    .end local v11    # "patIdxTmp":I
    .end local v14    # "patLength":I
    .end local v15    # "strLength":I
    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/16 v12, 0x2a

    goto :goto_7

    .line 487
    :cond_18
    move v9, v3

    .local v9, "i":I
    :goto_d
    if-gt v9, v4, :cond_1a

    .line 488
    aget-char v10, v1, v9

    const/16 v11, 0x2a

    if-eq v10, v11, :cond_19

    .line 489
    const/4 v10, 0x0

    return v10

    .line 487
    :cond_19
    const/4 v10, 0x0

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 492
    .end local v9    # "i":I
    :cond_1a
    return v5
.end method

.method private static matchAntPathPattern(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 18
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isCaseSensitive"    # Z

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    .line 209
    return v5

    .line 212
    :cond_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/apache/sshd/common/util/SelectorUtils;->tokenizePath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 213
    .local v3, "patDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/apache/sshd/common/util/SelectorUtils;->tokenizePath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 215
    .local v4, "strDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 216
    .local v6, "patIdxStart":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 217
    .local v7, "patIdxEnd":I
    const/4 v9, 0x0

    .line 218
    .local v9, "strIdxStart":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v8

    .line 221
    .local v10, "strIdxEnd":I
    :goto_0
    const-string v11, "**"

    if-gt v6, v7, :cond_3

    if-gt v9, v10, :cond_3

    .line 222
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 223
    .local v12, "patDir":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 224
    goto :goto_1

    .line 226
    :cond_1
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v12, v11, v2}, Lorg/apache/sshd/common/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_2

    .line 228
    const/4 v3, 0x0

    .line 229
    const/4 v4, 0x0

    .line 230
    return v5

    .line 232
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 233
    nop

    .end local v12    # "patDir":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 234
    goto :goto_0

    .line 235
    :cond_3
    :goto_1
    if-le v9, v10, :cond_6

    .line 237
    move v12, v6

    .local v12, "i":I
    :goto_2
    if-gt v12, v7, :cond_5

    .line 238
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 239
    const/4 v3, 0x0

    .line 240
    const/4 v4, 0x0

    .line 241
    return v5

    .line 237
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 244
    .end local v12    # "i":I
    :cond_5
    return v8

    .line 246
    :cond_6
    if-le v6, v7, :cond_7

    .line 248
    const/4 v3, 0x0

    .line 249
    const/4 v4, 0x0

    .line 250
    return v5

    .line 255
    :cond_7
    :goto_3
    if-gt v6, v7, :cond_a

    if-gt v9, v10, :cond_a

    .line 256
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 257
    .local v12, "patDir":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 258
    goto :goto_4

    .line 260
    :cond_8
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v12, v13, v2}, Lorg/apache/sshd/common/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_9

    .line 262
    const/4 v3, 0x0

    .line 263
    const/4 v4, 0x0

    .line 264
    return v5

    .line 266
    :cond_9
    add-int/lit8 v7, v7, -0x1

    .line 267
    nop

    .end local v12    # "patDir":Ljava/lang/String;
    add-int/lit8 v10, v10, -0x1

    .line 268
    goto :goto_3

    .line 269
    :cond_a
    :goto_4
    if-le v9, v10, :cond_d

    .line 271
    move v12, v6

    .local v12, "i":I
    :goto_5
    if-gt v12, v7, :cond_c

    .line 272
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 273
    const/4 v3, 0x0

    .line 274
    const/4 v4, 0x0

    .line 275
    return v5

    .line 271
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 278
    .end local v12    # "i":I
    :cond_c
    return v8

    .line 281
    :cond_d
    :goto_6
    if-eq v6, v7, :cond_15

    if-gt v9, v10, :cond_15

    .line 282
    const/4 v12, -0x1

    .line 283
    .local v12, "patIdxTmp":I
    add-int/lit8 v13, v6, 0x1

    .local v13, "i":I
    :goto_7
    if-gt v13, v7, :cond_f

    .line 284
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 285
    move v12, v13

    .line 286
    goto :goto_8

    .line 283
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 289
    .end local v13    # "i":I
    :cond_f
    :goto_8
    add-int/lit8 v13, v6, 0x1

    if-ne v12, v13, :cond_10

    .line 291
    add-int/lit8 v6, v6, 0x1

    .line 292
    goto :goto_6

    .line 296
    :cond_10
    sub-int v13, v12, v6

    sub-int/2addr v13, v8

    .line 297
    .local v13, "patLength":I
    sub-int v14, v10, v9

    add-int/2addr v14, v8

    .line 298
    .local v14, "strLength":I
    const/4 v15, -0x1

    .line 300
    .local v15, "foundIdx":I
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "i":I
    :goto_9
    sub-int v8, v14, v13

    if-gt v5, v8, :cond_13

    .line 301
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_a
    if-ge v8, v13, :cond_12

    .line 302
    add-int v17, v6, v8

    const/16 v16, 0x1

    add-int/lit8 v0, v17, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    .local v0, "subPat":Ljava/lang/String;
    add-int v17, v9, v5

    add-int v1, v17, v8

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 304
    .local v1, "subStr":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lorg/apache/sshd/common/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_11

    .line 305
    nop

    .line 300
    .end local v0    # "subPat":Ljava/lang/String;
    .end local v1    # "subStr":Ljava/lang/String;
    .end local v8    # "j":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v8, 0x1

    goto :goto_9

    .line 301
    .restart local v8    # "j":I
    :cond_11
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_a

    .line 309
    .end local v8    # "j":I
    :cond_12
    add-int v15, v9, v5

    .line 313
    .end local v5    # "i":I
    :cond_13
    const/4 v0, -0x1

    if-ne v15, v0, :cond_14

    .line 314
    const/4 v0, 0x0

    .line 315
    .end local v3    # "patDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "patDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 316
    .end local v4    # "strDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "strDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    return v3

    .line 319
    .end local v0    # "patDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "strDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "patDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "strDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    move v6, v12

    .line 320
    add-int v9, v15, v13

    .line 321
    .end local v12    # "patIdxTmp":I
    .end local v13    # "patLength":I
    .end local v14    # "strLength":I
    .end local v15    # "foundIdx":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_6

    .line 323
    :cond_15
    move v0, v6

    .local v0, "i":I
    :goto_b
    if-gt v0, v7, :cond_17

    .line 324
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 325
    const/4 v1, 0x0

    .line 326
    .end local v3    # "patDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "patDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 327
    .end local v4    # "strDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "strDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    return v5

    .line 323
    .end local v1    # "patDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "patDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "strDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    const/4 v5, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 331
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private static matchAntPathPatternStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "isCaseSensitive"    # Z

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 125
    return v2

    .line 128
    :cond_0
    invoke-static {p0, p2}, Lorg/apache/sshd/common/util/SelectorUtils;->tokenizePath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "patDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lorg/apache/sshd/common/util/SelectorUtils;->tokenizePath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 131
    .local v1, "strDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 132
    .local v3, "patIdxStart":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 133
    .local v4, "patIdxEnd":I
    const/4 v6, 0x0

    .line 134
    .local v6, "strIdxStart":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .line 137
    .local v7, "strIdxEnd":I
    :goto_0
    if-gt v3, v4, :cond_3

    if-gt v6, v7, :cond_3

    .line 138
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 139
    .local v8, "patDir":Ljava/lang/String;
    const-string v9, "**"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 140
    goto :goto_1

    .line 142
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9, p3}, Lorg/apache/sshd/common/util/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_2

    .line 144
    return v2

    .line 146
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 147
    nop

    .end local v8    # "patDir":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 148
    goto :goto_0

    .line 151
    :cond_3
    :goto_1
    if-le v6, v7, :cond_4

    .line 153
    return v5

    .line 155
    :cond_4
    if-gt v3, v4, :cond_5

    move v2, v5

    :cond_5
    return v2
.end method

.method public static matchPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/SelectorUtils;->matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isCaseSensitive"    # Z

    .line 187
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "%regex["

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "]"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_0

    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "%ant["

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 199
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/util/SelectorUtils;->matchAntPathPattern(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static matchPatternStart(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isCaseSensitive"    # Z

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "%regex["

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "]"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-le v0, v2, :cond_0

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    return v4

    .line 104
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "%ant["

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v4

    if-le v0, v2, :cond_1

    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    nop

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 111
    :cond_1
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "altStr":Ljava/lang/String;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, p1, v1, p2}, Lorg/apache/sshd/common/util/SelectorUtils;->matchAntPathPatternStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    const-string v1, "/"

    invoke-static {p0, v0, v1, p2}, Lorg/apache/sshd/common/util/SelectorUtils;->matchAntPathPatternStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 113
    :goto_1
    return v4
.end method

.method public static removeWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .local v0, "result":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 775
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 776
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 780
    .end local v1    # "st":Ljava/util/StringTokenizer;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static tokenizePath(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 524
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/SelectorUtils;->tokenizePath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static tokenizePath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 533
    :cond_0
    return-object v0
.end method

.method public static translateToFileSystemPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "pathSeparator"    # Ljava/lang/String;
    .param p2, "fsSeparator"    # Ljava/lang/String;

    .line 744
    const-string v0, "Missing path separator"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    const-string v0, "Missing file-system separator"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 747
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 753
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    aput-object p2, v0, v2

    const-string v3, "File system replacement may yield ambiguous result for %s with separator=%s"

    invoke-static {v3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 758
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 760
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 748
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static translateToFileSystemPath(Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/FileSystem;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "pathSeparator"    # Ljava/lang/String;
    .param p2, "fs"    # Ljava/nio/file/FileSystem;

    .line 727
    const-string v0, "No target file system"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/SelectorUtils;->translateToFileSystemPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static translateToLocalFileSystemPath(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "pathSeparator"    # C
    .param p2, "fsSeparator"    # Ljava/lang/String;

    .line 567
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/SelectorUtils;->applySlashifyRules(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "slashified":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/SelectorUtils;->translateToLocalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "localPath":Ljava/lang/String;
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lorg/apache/sshd/common/util/SelectorUtils;->translateToFileSystemPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static translateToLocalFileSystemPath(Ljava/lang/String;CLjava/nio/file/FileSystem;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "pathSeparator"    # C
    .param p2, "fs"    # Ljava/nio/file/FileSystem;

    .line 548
    nop

    .line 549
    const-string v0, "No target file system"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/SelectorUtils;->translateToLocalFileSystemPath(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static translateToLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 671
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "localPath":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v3, v2}, Lorg/apache/sshd/common/util/SelectorUtils;->isWindowsDriveSpecified(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 679
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    :cond_1
    invoke-static {v0}, Lorg/apache/sshd/common/util/SelectorUtils;->isWindowsDriveSpecified(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 682
    return-object v0

    .line 691
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 693
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-eq v2, v4, :cond_4

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 697
    :cond_4
    return-object v0

    .line 672
    .end local v0    # "localPath":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object p0
.end method
