.class public Lorg/apache/commons/lang/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 110
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "builder"    # Lorg/apache/commons/lang/builder/CompareToBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;

    .line 355
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 356
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget v2, p3, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v2, :cond_2

    .line 358
    aget-object v2, v0, v1

    .line 359
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Lorg/apache/commons/lang/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 364
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    goto :goto_1

    .line 365
    :catch_0
    move-exception v3

    .line 368
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 357
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # Ljava/util/Collection;

    .line 205
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z

    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)I
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;

    .line 275
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 11
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;
    .param p4, "excludeFields"    # [Ljava/lang/String;

    .line 317
    if-ne p0, p1, :cond_0

    .line 318
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 324
    .local v0, "lhsClazz":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    new-instance v4, Lorg/apache/commons/lang/builder/CompareToBuilder;

    invoke-direct {v4}, Lorg/apache/commons/lang/builder/CompareToBuilder;-><init>()V

    .line 328
    .local v4, "compareToBuilder":Lorg/apache/commons/lang/builder/CompareToBuilder;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v5, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    .line 329
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eq v0, p3, :cond_1

    .line 330
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 331
    move-object v5, p0

    move-object v6, p1

    move-object v7, v0

    move-object v8, v4

    move v9, p2

    move-object v10, p4

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {v4}, Lorg/apache/commons/lang/builder/CompareToBuilder;->toComparison()I

    move-result v1

    return v1

    .line 325
    .end local v4    # "compareToBuilder":Lorg/apache/commons/lang/builder/CompareToBuilder;
    :cond_2
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 321
    .end local v0    # "lhsClazz":Ljava/lang/Class;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .line 565
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 566
    return-object p0

    .line 568
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 569
    return-object p0
.end method

.method public append(CC)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .line 549
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 550
    return-object p0

    .line 552
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 553
    return-object p0
.end method

.method public append(DD)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .line 586
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 587
    return-object p0

    .line 589
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/lang/math/NumberUtils;->compare(DD)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 590
    return-object p0
.end method

.method public append(FF)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .line 607
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 608
    return-object p0

    .line 610
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/lang/math/NumberUtils;->compare(FF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 611
    return-object p0
.end method

.method public append(II)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .line 517
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 518
    return-object p0

    .line 520
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 521
    return-object p0
.end method

.method public append(JJ)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .line 501
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 502
    return-object p0

    .line 504
    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 505
    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 2
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .param p3, "comparator"    # Ljava/util/Comparator;

    .line 441
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 442
    return-object p0

    .line 444
    :cond_0
    if-ne p1, p2, :cond_1

    .line 445
    return-object p0

    .line 447
    :cond_1
    if-nez p1, :cond_2

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 449
    return-object p0

    .line 451
    :cond_2
    if-nez p2, :cond_3

    .line 452
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 453
    return-object p0

    .line 455
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 459
    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    .line 460
    move-object v0, p1

    check-cast v0, [J

    check-cast v0, [J

    move-object v1, p2

    check-cast v1, [J

    check-cast v1, [J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([J[J)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto/16 :goto_0

    .line 461
    :cond_4
    instance-of v0, p1, [I

    if-eqz v0, :cond_5

    .line 462
    move-object v0, p1

    check-cast v0, [I

    check-cast v0, [I

    move-object v1, p2

    check-cast v1, [I

    check-cast v1, [I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([I[I)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto/16 :goto_0

    .line 463
    :cond_5
    instance-of v0, p1, [S

    if-eqz v0, :cond_6

    .line 464
    move-object v0, p1

    check-cast v0, [S

    check-cast v0, [S

    move-object v1, p2

    check-cast v1, [S

    check-cast v1, [S

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([S[S)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto/16 :goto_0

    .line 465
    :cond_6
    instance-of v0, p1, [C

    if-eqz v0, :cond_7

    .line 466
    move-object v0, p1

    check-cast v0, [C

    check-cast v0, [C

    move-object v1, p2

    check-cast v1, [C

    check-cast v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([C[C)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 467
    :cond_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_8

    .line 468
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, p2

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([B[B)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 469
    :cond_8
    instance-of v0, p1, [D

    if-eqz v0, :cond_9

    .line 470
    move-object v0, p1

    check-cast v0, [D

    check-cast v0, [D

    move-object v1, p2

    check-cast v1, [D

    check-cast v1, [D

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([D[D)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 471
    :cond_9
    instance-of v0, p1, [F

    if-eqz v0, :cond_a

    .line 472
    move-object v0, p1

    check-cast v0, [F

    check-cast v0, [F

    move-object v1, p2

    check-cast v1, [F

    check-cast v1, [F

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([F[F)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 473
    :cond_a
    instance-of v0, p1, [Z

    if-eqz v0, :cond_b

    .line 474
    move-object v0, p1

    check-cast v0, [Z

    check-cast v0, [Z

    move-object v1, p2

    check-cast v1, [Z

    check-cast v1, [Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([Z[Z)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 478
    :cond_b
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    goto :goto_0

    .line 482
    :cond_c
    if-nez p3, :cond_d

    .line 483
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 485
    :cond_d
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 488
    :goto_0
    return-object p0
.end method

.method public append(SS)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .line 533
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 534
    return-object p0

    .line 536
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 537
    return-object p0
.end method

.method public append(ZZ)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .line 623
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 624
    return-object p0

    .line 626
    :cond_0
    if-ne p1, p2, :cond_1

    .line 627
    return-object p0

    .line 629
    :cond_1
    if-nez p1, :cond_2

    .line 630
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 632
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 634
    :goto_0
    return-object p0
.end method

.method public append([B[B)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 4
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .line 886
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 887
    return-object p0

    .line 889
    :cond_0
    if-ne p1, p2, :cond_1

    .line 890
    return-object p0

    .line 892
    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 893
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 894
    return-object p0

    .line 896
    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 897
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 898
    return-object p0

    .line 900
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 901
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 902
    return-object p0

    .line 904
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 905
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(BB)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 904
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 907
    .end local v0    # "i":I
    :cond_6
    return-object p0
.end method

.method public append([C[C)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 4
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .line 846
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 847
    return-object p0

    .line 849
    :cond_0
    if-ne p1, p2, :cond_1

    .line 850
    return-object p0

    .line 852
    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 853
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 854
    return-object p0

    .line 856
    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 857
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 858
    return-object p0

    .line 860
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 861
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 862
    return-object p0

    .line 864
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 865
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(CC)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 867
    .end local v0    # "i":I
    :cond_6
    return-object p0
.end method

.method public append([D[D)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .line 926
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 927
    return-object p0

    .line 929
    :cond_0
    if-ne p1, p2, :cond_1

    .line 930
    return-object p0

    .line 932
    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 933
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 934
    return-object p0

    .line 936
    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 937
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 938
    return-object p0

    .line 940
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 941
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 942
    return-object p0

    .line 944
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 945
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(DD)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 947
    .end local v0    # "i":I
    :cond_6
    return-object p0
.end method

.method public append([F[F)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 4
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .line 966
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 967
    return-object p0

    .line 969
    :cond_0
    if-ne p1, p2, :cond_1

    .line 970
    return-object p0

    .line 972
    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 973
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 974
    return-object p0

    .line 976
    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 977
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 978
    return-object p0

    .line 980
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 981
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 982
    return-object p0

    .line 984
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 985
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(FF)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 987
    .end local v0    # "i":I
    :cond_6
    return-object p0
.end method

.method public append([I[I)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 4
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .line 766
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 767
    return-object p0

    .line 769
    :cond_0
    if-ne p1, p2, :cond_1

    .line 770
    return-object p0

    .line 772
    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 773
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 774
    return-object p0

    .line 776
    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 777
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 778
    return-object p0

    .line 780
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 781
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 782
    return-object p0

    .line 784
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 785
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(II)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 787
    .end local v0    # "i":I
    :cond_6
    return-object p0
.end method

.method public append([J[J)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .line 726
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 727
    return-object p0

    .line 729
    :cond_0
    if-ne p1, p2, :cond_1

    .line 730
    return-object p0

    .line 732
    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 733
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 734
    return-object p0

    .line 736
    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 737
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 738
    return-object p0

    .line 740
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 741
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 742
    return-object p0

    .line 744
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 745
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(JJ)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 747
    .end local v0    # "i":I
    :cond_6
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .line 659
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 4
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;
    .param p3, "comparator"    # Ljava/util/Comparator;

    .line 686
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 687
    return-object p0

    .line 689
    :cond_0
    if-ne p1, p2, :cond_1

    .line 690
    return-object p0

    .line 692
    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 693
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 694
    return-object p0

    .line 696
    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 697
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 698
    return-object p0

    .line 700
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 701
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 702
    return-object p0

    .line 704
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 705
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 707
    .end local v0    # "i":I
    :cond_6
    return-object p0
.end method

.method public append([S[S)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 4
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .line 806
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 807
    return-object p0

    .line 809
    :cond_0
    if-ne p1, p2, :cond_1

    .line 810
    return-object p0

    .line 812
    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 813
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 814
    return-object p0

    .line 816
    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 817
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 818
    return-object p0

    .line 820
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 821
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 822
    return-object p0

    .line 824
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 825
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(SS)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 827
    .end local v0    # "i":I
    :cond_6
    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 4
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .line 1006
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 1007
    return-object p0

    .line 1009
    :cond_0
    if-ne p1, p2, :cond_1

    .line 1010
    return-object p0

    .line 1012
    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 1013
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 1014
    return-object p0

    .line 1016
    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 1017
    iput v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 1018
    return-object p0

    .line 1020
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 1021
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 1022
    return-object p0

    .line 1024
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    .line 1025
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/CompareToBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/CompareToBuilder;

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1027
    .end local v0    # "i":I
    :cond_6
    return-object p0
.end method

.method public appendSuper(I)Lorg/apache/commons/lang/builder/CompareToBuilder;
    .locals 1
    .param p1, "superCompareTo"    # I

    .line 384
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 385
    return-object p0

    .line 387
    :cond_0
    iput p1, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    .line 388
    return-object p0
.end method

.method public toComparison()I
    .locals 1

    .line 1040
    iget v0, p0, Lorg/apache/commons/lang/builder/CompareToBuilder;->comparison:I

    return v0
.end method
