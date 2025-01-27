.class public Lorg/apache/commons/lang/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"


# instance fields
.field private isEquals:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 101
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "builder"    # Lorg/apache/commons/lang/builder/EqualsBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;

    .line 319
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 320
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 321
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget-boolean v2, p3, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v2, :cond_2

    .line 322
    aget-object v2, v0, v1

    .line 323
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

    .line 328
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_1

    .line 329
    :catch_0
    move-exception v3

    .line 332
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 321
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # Ljava/util/Collection;

    .line 147
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z

    .line 194
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;

    .line 223
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 16
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p3, "reflectUpToClass"    # Ljava/lang/Class;
    .param p4, "excludeFields"    # [Ljava/lang/String;

    .line 254
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    if-ne v11, v12, :cond_0

    .line 255
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_0
    const/4 v13, 0x0

    if-eqz v11, :cond_8

    if-nez v12, :cond_1

    move-object/from16 v1, p3

    goto/16 :goto_3

    .line 264
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 265
    .local v14, "lhsClass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 267
    .local v15, "rhsClass":Ljava/lang/Class;
    invoke-virtual {v14, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    move-object v0, v14

    .line 269
    .local v0, "testClass":Ljava/lang/Class;
    invoke-virtual {v15, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 271
    move-object v0, v15

    move-object v7, v0

    goto :goto_0

    .line 269
    :cond_2
    move-object v7, v0

    goto :goto_0

    .line 273
    .end local v0    # "testClass":Ljava/lang/Class;
    :cond_3
    invoke-virtual {v15, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 274
    move-object v0, v15

    .line 275
    .restart local v0    # "testClass":Ljava/lang/Class;
    invoke-virtual {v14, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 277
    move-object v0, v14

    move-object v7, v0

    goto :goto_0

    .line 275
    :cond_4
    move-object v7, v0

    .line 283
    .end local v0    # "testClass":Ljava/lang/Class;
    .local v7, "testClass":Ljava/lang/Class;
    :goto_0
    new-instance v4, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    .line 285
    .local v4, "equalsBuilder":Lorg/apache/commons/lang/builder/EqualsBuilder;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v5, p2

    move-object/from16 v6, p4

    :try_start_0
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    .line 286
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_5

    move-object/from16 v1, p3

    if-eq v7, v1, :cond_6

    .line 287
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v7, v0

    .line 288
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v4

    move/from16 v9, p2

    move-object/from16 v10, p4

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 290
    :catch_0
    move-exception v0

    goto :goto_2

    .line 286
    :cond_5
    move-object/from16 v1, p3

    .line 297
    :cond_6
    nop

    .line 298
    invoke-virtual {v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0

    .line 290
    :catch_1
    move-exception v0

    move-object/from16 v1, p3

    .line 296
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    return v13

    .line 281
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "equalsBuilder":Lorg/apache/commons/lang/builder/EqualsBuilder;
    .end local v7    # "testClass":Ljava/lang/Class;
    :cond_7
    move-object/from16 v1, p3

    return v13

    .line 257
    .end local v14    # "lhsClass":Ljava/lang/Class;
    .end local v15    # "rhsClass":Ljava/lang/Class;
    :cond_8
    move-object/from16 v1, p3

    .line 258
    :goto_3
    return v13
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .line 481
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 482
    return-object p0

    .line 484
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 485
    return-object p0
.end method

.method public append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .line 466
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 467
    return-object p0

    .line 469
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 470
    return-object p0
.end method

.method public append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .line 502
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 503
    return-object p0

    .line 505
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .line 522
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 523
    return-object p0

    .line 525
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .line 436
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 437
    return-object p0

    .line 439
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 440
    return-object p0
.end method

.method public append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .line 421
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 422
    return-object p0

    .line 424
    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 425
    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .line 366
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 367
    return-object p0

    .line 369
    :cond_0
    if-ne p1, p2, :cond_1

    .line 370
    return-object p0

    .line 372
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    if-nez p2, :cond_2

    goto/16 :goto_1

    .line 376
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 377
    .local v1, "lhsClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_3

    .line 379
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto/16 :goto_0

    .line 380
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 382
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto/16 :goto_0

    .line 386
    :cond_4
    instance-of v0, p1, [J

    if-eqz v0, :cond_5

    .line 387
    move-object v0, p1

    check-cast v0, [J

    check-cast v0, [J

    move-object v2, p2

    check-cast v2, [J

    check-cast v2, [J

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 388
    :cond_5
    instance-of v0, p1, [I

    if-eqz v0, :cond_6

    .line 389
    move-object v0, p1

    check-cast v0, [I

    check-cast v0, [I

    move-object v2, p2

    check-cast v2, [I

    check-cast v2, [I

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 390
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    .line 391
    move-object v0, p1

    check-cast v0, [S

    check-cast v0, [S

    move-object v2, p2

    check-cast v2, [S

    check-cast v2, [S

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 392
    :cond_7
    instance-of v0, p1, [C

    if-eqz v0, :cond_8

    .line 393
    move-object v0, p1

    check-cast v0, [C

    check-cast v0, [C

    move-object v2, p2

    check-cast v2, [C

    check-cast v2, [C

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 394
    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    .line 395
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    move-object v2, p2

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 396
    :cond_9
    instance-of v0, p1, [D

    if-eqz v0, :cond_a

    .line 397
    move-object v0, p1

    check-cast v0, [D

    check-cast v0, [D

    move-object v2, p2

    check-cast v2, [D

    check-cast v2, [D

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 398
    :cond_a
    instance-of v0, p1, [F

    if-eqz v0, :cond_b

    .line 399
    move-object v0, p1

    check-cast v0, [F

    check-cast v0, [F

    move-object v2, p2

    check-cast v2, [F

    check-cast v2, [F

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 400
    :cond_b
    instance-of v0, p1, [Z

    if-eqz v0, :cond_c

    .line 401
    move-object v0, p1

    check-cast v0, [Z

    check-cast v0, [Z

    move-object v2, p2

    check-cast v2, [Z

    check-cast v2, [Z

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 404
    :cond_c
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 406
    :goto_0
    return-object p0

    .line 373
    .end local v1    # "lhsClass":Ljava/lang/Class;
    :cond_d
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 374
    return-object p0
.end method

.method public append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .line 451
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 452
    return-object p0

    .line 454
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 455
    return-object p0
.end method

.method public append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .line 536
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 537
    return-object p0

    .line 539
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 540
    return-object p0
.end method

.method public append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .line 709
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 710
    return-object p0

    .line 712
    :cond_0
    if-ne p1, p2, :cond_1

    .line 713
    return-object p0

    .line 715
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 719
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 720
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 721
    return-object p0

    .line 723
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 724
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 716
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 717
    return-object p0
.end method

.method public append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .line 678
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 679
    return-object p0

    .line 681
    :cond_0
    if-ne p1, p2, :cond_1

    .line 682
    return-object p0

    .line 684
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 688
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 689
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 690
    return-object p0

    .line 692
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 693
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 695
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 685
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 686
    return-object p0
.end method

.method public append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 5
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .line 740
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 741
    return-object p0

    .line 743
    :cond_0
    if-ne p1, p2, :cond_1

    .line 744
    return-object p0

    .line 746
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 750
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 751
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 752
    return-object p0

    .line 754
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 755
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 747
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 748
    return-object p0
.end method

.method public append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .line 771
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 772
    return-object p0

    .line 774
    :cond_0
    if-ne p1, p2, :cond_1

    .line 775
    return-object p0

    .line 777
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 781
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 782
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 783
    return-object p0

    .line 785
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 786
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 778
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 779
    return-object p0
.end method

.method public append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .line 616
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 617
    return-object p0

    .line 619
    :cond_0
    if-ne p1, p2, :cond_1

    .line 620
    return-object p0

    .line 622
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 626
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 627
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 628
    return-object p0

    .line 630
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 631
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 623
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 624
    return-object p0
.end method

.method public append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 5
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .line 585
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 586
    return-object p0

    .line 588
    :cond_0
    if-ne p1, p2, :cond_1

    .line 589
    return-object p0

    .line 591
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 595
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 596
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 597
    return-object p0

    .line 599
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 600
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 592
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 593
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .line 554
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 555
    return-object p0

    .line 557
    :cond_0
    if-ne p1, p2, :cond_1

    .line 558
    return-object p0

    .line 560
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 564
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 565
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 566
    return-object p0

    .line 568
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 569
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 561
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 562
    return-object p0
.end method

.method public append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .line 647
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 648
    return-object p0

    .line 650
    :cond_0
    if-ne p1, p2, :cond_1

    .line 651
    return-object p0

    .line 653
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 657
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 658
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 659
    return-object p0

    .line 661
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 662
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 654
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 655
    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .line 802
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 803
    return-object p0

    .line 805
    :cond_0
    if-ne p1, p2, :cond_1

    .line 806
    return-object p0

    .line 808
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 812
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 813
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 814
    return-object p0

    .line 816
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 817
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 809
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    .line 810
    return-object p0
.end method

.method public appendSuper(Z)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1
    .param p1, "superEquals"    # Z

    .line 348
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 349
    return-object p0

    .line 351
    :cond_0
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 352
    return-object p0
.end method

.method public isEquals()Z
    .locals 1

    .line 829
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 848
    return-void
.end method

.method protected setEquals(Z)V
    .locals 0
    .param p1, "isEquals"    # Z

    .line 839
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 840
    return-void
.end method
