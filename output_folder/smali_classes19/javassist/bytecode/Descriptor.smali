.class public Ljavassist/bytecode/Descriptor;
.super Ljava/lang/Object;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/Descriptor$Iterator;,
        Ljavassist/bytecode/Descriptor$PrettyPrinter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;

    .line 323
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 324
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 325
    return-object p1

    .line 326
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 327
    .local v1, "newdesc":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 329
    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static appendParameter(Ljavassist/CtClass;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljavassist/CtClass;
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 361
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 362
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 363
    return-object p1

    .line 364
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    .local v1, "newdesc":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    invoke-static {v1, p0}, Ljavassist/bytecode/Descriptor;->toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V

    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static arrayDimension(Ljava/lang/String;)I
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "dim":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_0
    return v0
.end method

.method public static changeReturnType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;

    .line 395
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 396
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 397
    return-object p1

    .line 398
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    .local v1, "newdesc":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 401
    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 403
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static dataSize(Ljava/lang/String;)I
    .locals 1
    .param p0, "desc"    # Ljava/lang/String;

    .line 651
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private static dataSize(Ljava/lang/String;Z)I
    .locals 7
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "withRet"    # Z

    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "n":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 670
    .local v1, "c":C
    const/16 v2, 0x44

    const/16 v3, 0x4a

    const/16 v4, 0x28

    if-ne v1, v4, :cond_6

    .line 671
    const/4 v4, 0x1

    .line 673
    .local v4, "i":I
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 674
    const/16 v5, 0x29

    if-ne v1, v5, :cond_0

    .line 675
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 676
    goto :goto_4

    .line 679
    :cond_0
    const/4 v5, 0x0

    .line 680
    .local v5, "array":Z
    :goto_1
    const/16 v6, 0x5b

    if-ne v1, v6, :cond_1

    .line 681
    const/4 v5, 0x1

    .line 682
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 685
    :cond_1
    const/16 v6, 0x4c

    if-ne v1, v6, :cond_3

    .line 686
    const/16 v6, 0x3b

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 687
    .end local v4    # "i":I
    .local v6, "i":I
    if-lez v6, :cond_2

    move v4, v6

    goto :goto_2

    .line 688
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "bad descriptor"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 691
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 693
    :goto_2
    if-nez v5, :cond_5

    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_5

    .line 694
    :cond_4
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 696
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 697
    .end local v5    # "array":Z
    :goto_3
    goto :goto_0

    .line 700
    .end local v4    # "i":I
    :cond_6
    :goto_4
    if-eqz p1, :cond_9

    .line 701
    if-eq v1, v3, :cond_8

    if-ne v1, v2, :cond_7

    goto :goto_5

    .line 703
    :cond_7
    const/16 v2, 0x56

    if-eq v1, v2, :cond_9

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 702
    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x2

    .line 706
    :cond_9
    :goto_6
    return v0
.end method

.method public static eqParamTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "desc1"    # Ljava/lang/String;
    .param p1, "desc2"    # Ljava/lang/String;

    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    .line 436
    return v0

    .line 438
    :cond_0
    const/4 v1, 0x0

    .line 439
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 440
    .local v2, "c":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 441
    return v0

    .line 443
    :cond_1
    const/16 v3, 0x29

    if-ne v2, v3, :cond_2

    .line 444
    const/4 v0, 0x1

    return v0

    .line 438
    .end local v2    # "c":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getParamDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "decl"    # Ljava/lang/String;

    .line 454
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;
    .locals 5
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 418
    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_0
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->numOfParameters(Ljava/lang/String;)I

    move-result v0

    .line 420
    .local v0, "num":I
    new-array v1, v0, [Ljavassist/CtClass;

    .line 421
    .local v1, "args":[Ljavassist/CtClass;
    const/4 v2, 0x0

    .line 422
    .local v2, "n":I
    const/4 v3, 0x1

    .line 424
    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "n":I
    .local v4, "n":I
    invoke-static {p1, p0, v3, v1, v2}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljavassist/ClassPool;Ljava/lang/String;I[Ljavassist/CtClass;I)I

    move-result v3

    .line 425
    if-gtz v3, :cond_1

    .line 426
    return-object v1

    .line 425
    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public static getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 468
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 469
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 470
    const/4 v1, 0x0

    return-object v1

    .line 471
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljavassist/CtClass;

    .line 472
    .local v1, "type":[Ljavassist/CtClass;
    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    invoke-static {p1, p0, v2, v1, v3}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljavassist/ClassPool;Ljava/lang/String;I[Ljavassist/CtClass;I)I

    .line 473
    aget-object v2, v1, v3

    return-object v2
.end method

.method public static insertParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 347
    return-object p1

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 349
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    return-object v0
.end method

.method public static insertParameter(Ljavassist/CtClass;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljavassist/CtClass;
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 382
    return-object p1

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static numOfParameters(Ljava/lang/String;)I
    .locals 5
    .param p0, "desc"    # Ljava/lang/String;

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "n":I
    const/4 v1, 0x1

    .line 486
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 487
    .local v2, "c":C
    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    .line 488
    nop

    .line 504
    .end local v2    # "c":C
    return v0

    .line 490
    .restart local v2    # "c":C
    :cond_0
    :goto_1
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    .line 491
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    .line 493
    :cond_1
    const/16 v3, 0x4c

    if-ne v2, v3, :cond_3

    .line 494
    const/16 v3, 0x3b

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 495
    .end local v1    # "i":I
    .local v3, "i":I
    if-lez v3, :cond_2

    move v1, v3

    goto :goto_2

    .line 496
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "bad descriptor"

    invoke-direct {v1, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 501
    :goto_2
    nop

    .end local v2    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 502
    goto :goto_0
.end method

.method public static of(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .line 124
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "V"

    return-object v0

    .line 126
    :cond_0
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "I"

    return-object v0

    .line 128
    :cond_1
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "B"

    return-object v0

    .line 130
    :cond_2
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    const-string v0, "J"

    return-object v0

    .line 132
    :cond_3
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    const-string v0, "D"

    return-object v0

    .line 134
    :cond_4
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    const-string v0, "F"

    return-object v0

    .line 136
    :cond_5
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    const-string v0, "C"

    return-object v0

    .line 138
    :cond_6
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 139
    const-string v0, "S"

    return-object v0

    .line 140
    :cond_7
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    const-string v0, "Z"

    return-object v0

    .line 143
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljavassist/CtClass;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljavassist/CtClass;

    .line 240
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Ljavassist/bytecode/Descriptor;->toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static ofConstructor([Ljavassist/CtClass;)Ljava/lang/String;
    .locals 1
    .param p0, "paramTypes"    # [Ljavassist/CtClass;

    .line 276
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    invoke-static {v0, p0}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;
    .locals 4
    .param p0, "returnType"    # Ljavassist/CtClass;
    .param p1, "paramTypes"    # [Ljavassist/CtClass;

    .line 287
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 288
    .local v0, "desc":Ljava/lang/StringBuffer;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 289
    if-eqz p1, :cond_0

    .line 290
    array-length v1, p1

    .line 291
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 292
    aget-object v3, p1, v2

    invoke-static {v0, v3}, Ljavassist/bytecode/Descriptor;->toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 296
    if-eqz p0, :cond_1

    .line 297
    invoke-static {v0, p0}, Ljavassist/bytecode/Descriptor;->toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V

    .line 299
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static ofParameters([Ljavassist/CtClass;)Ljava/lang/String;
    .locals 1
    .param p0, "paramTypes"    # [Ljavassist/CtClass;

    .line 310
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static paramSize(Ljava/lang/String;)I
    .locals 1
    .param p0, "desc"    # Ljava/lang/String;

    .line 664
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;Z)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 157
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 158
    return-object p0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v0, "newdesc":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 162
    .local v1, "head":I
    const/4 v2, 0x0

    .line 164
    .local v2, "i":I
    :goto_0
    const/16 v3, 0x4c

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 165
    .local v4, "j":I
    if-gez v4, :cond_1

    .line 166
    goto :goto_1

    .line 167
    :cond_1
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    const/16 v6, 0x3b

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_2

    .line 169
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    move v2, v3

    move v1, v3

    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 177
    if-ge v2, v7, :cond_5

    .line 178
    nop

    .line 182
    .end local v4    # "j":I
    :goto_1
    if-nez v1, :cond_3

    .line 183
    return-object p0

    .line 184
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 185
    .local v3, "len":I
    if-ge v1, v3, :cond_4

    .line 186
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 180
    .end local v3    # "len":I
    :cond_5
    :goto_2
    goto :goto_0
.end method

.method public static rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p0, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 200
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 201
    return-object p0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v0, "newdesc":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 205
    .local v1, "head":I
    const/4 v2, 0x0

    .line 207
    .local v2, "i":I
    :goto_0
    const/16 v3, 0x4c

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 208
    .local v4, "j":I
    if-gez v4, :cond_1

    .line 209
    goto :goto_1

    .line 211
    :cond_1
    const/16 v5, 0x3b

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 212
    .local v6, "k":I
    if-gez v6, :cond_4

    .line 213
    nop

    .line 227
    .end local v4    # "j":I
    .end local v6    # "k":I
    :goto_1
    if-nez v1, :cond_2

    .line 228
    return-object p0

    .line 229
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 230
    .local v3, "len":I
    if-ge v1, v3, :cond_3

    .line 231
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 215
    .end local v3    # "len":I
    .restart local v4    # "j":I
    .restart local v6    # "k":I
    :cond_4
    add-int/lit8 v2, v6, 0x1

    .line 216
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "name":Ljava/lang/String;
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 218
    .local v8, "name2":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 219
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    move v1, v2

    .line 225
    .end local v4    # "j":I
    .end local v6    # "k":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "name2":Ljava/lang/String;
    :cond_5
    goto :goto_0
.end method

.method public static toArrayComponent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "dim"    # I

    .line 636
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "arrayDim":I
    const/4 v1, 0x0

    .line 74
    .local v1, "i":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 75
    .local v2, "c":C
    :goto_0
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 81
    :cond_0
    const/16 v3, 0x4c

    if-ne v2, v3, :cond_1

    .line 82
    const/16 v3, 0x3b

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 83
    .local v1, "i2":I
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "name":Ljava/lang/String;
    nop

    .line 85
    .end local v4    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 86
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x56

    if-ne v2, v3, :cond_2

    .line 87
    const-string v3, "void"

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 88
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x49

    if-ne v2, v3, :cond_3

    .line 89
    const-string v3, "int"

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 90
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x42

    if-ne v2, v3, :cond_4

    .line 91
    const-string v3, "byte"

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 92
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    const/16 v3, 0x4a

    if-ne v2, v3, :cond_5

    .line 93
    const-string v3, "long"

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 94
    .end local v3    # "name":Ljava/lang/String;
    :cond_5
    const/16 v3, 0x44

    if-ne v2, v3, :cond_6

    .line 95
    const-string v3, "double"

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 96
    .end local v3    # "name":Ljava/lang/String;
    :cond_6
    const/16 v3, 0x46

    if-ne v2, v3, :cond_7

    .line 97
    const-string v3, "float"

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 98
    .end local v3    # "name":Ljava/lang/String;
    :cond_7
    const/16 v3, 0x43

    if-ne v2, v3, :cond_8

    .line 99
    const-string v3, "char"

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 100
    .end local v3    # "name":Ljava/lang/String;
    :cond_8
    const/16 v3, 0x53

    if-ne v2, v3, :cond_9

    .line 101
    const-string v3, "short"

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 102
    .end local v3    # "name":Ljava/lang/String;
    :cond_9
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_d

    .line 103
    const-string v3, "boolean"

    .line 107
    .restart local v3    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_c

    .line 110
    if-nez v0, :cond_a

    .line 111
    return-object v3

    .line 112
    :cond_a
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 114
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    :cond_b
    const-string v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_b

    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 108
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    :cond_c
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multiple descriptors?: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    .end local v3    # "name":Ljava/lang/String;
    :cond_d
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad descriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static toCtClass(Ljavassist/ClassPool;Ljava/lang/String;I[Ljavassist/CtClass;I)I
    .locals 6
    .param p0, "cp"    # Ljavassist/ClassPool;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljavassist/CtClass;
    .param p4, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, "arrayDim":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 541
    .local v1, "c":C
    :goto_0
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 542
    add-int/lit8 v0, v0, 0x1

    .line 543
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 546
    :cond_0
    const/16 v2, 0x4c

    if-ne v1, v2, :cond_1

    .line 547
    const/16 v2, 0x3b

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 548
    .local v2, "i2":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i2":I
    .local v3, "i2":I
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    goto :goto_1

    .line 551
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "i2":I
    :cond_1
    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->toPrimitiveClass(C)Ljavassist/CtClass;

    move-result-object v2

    .line 552
    .local v2, "type":Ljavassist/CtClass;
    if-nez v2, :cond_2

    .line 553
    const/4 v3, -0x1

    return v3

    .line 555
    :cond_2
    add-int/lit8 v3, p2, 0x1

    .line 556
    .restart local v3    # "i2":I
    if-nez v0, :cond_3

    .line 557
    aput-object v2, p3, p4

    .line 558
    return v3

    .line 560
    :cond_3
    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 563
    .local v2, "name":Ljava/lang/String;
    :goto_1
    if-lez v0, :cond_5

    .line 564
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 565
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    :goto_2
    add-int/lit8 v5, v0, -0x1

    .end local v0    # "arrayDim":I
    .local v5, "arrayDim":I
    if-lez v0, :cond_4

    .line 566
    const-string v0, "[]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v5

    goto :goto_2

    .line 568
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v0, v5

    .line 571
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    .end local v5    # "arrayDim":I
    .restart local v0    # "arrayDim":I
    :cond_5
    invoke-virtual {p0, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v4

    aput-object v4, p3, p4

    .line 572
    return v3
.end method

.method public static toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 523
    const/4 v0, 0x1

    new-array v0, v0, [Ljavassist/CtClass;

    .line 524
    .local v0, "clazz":[Ljavassist/CtClass;
    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0, v1}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljavassist/ClassPool;Ljava/lang/String;I[Ljavassist/CtClass;I)I

    move-result v2

    .line 525
    .local v2, "res":I
    if-ltz v2, :cond_0

    .line 526
    aget-object v1, v0, v1

    return-object v1

    .line 529
    :cond_0
    const/16 v1, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    return-object v1
.end method

.method private static toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V
    .locals 5
    .param p0, "desc"    # Ljava/lang/StringBuffer;
    .param p1, "type"    # Ljavassist/CtClass;

    .line 246
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    const/16 v1, 0x3b

    const/16 v2, 0x4c

    if-eqz v0, :cond_0

    .line 247
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0

    invoke-static {p0, v0}, Ljavassist/bytecode/Descriptor;->toDescriptor(Ljava/lang/StringBuffer;Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljavassist/NotFoundException;
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v2    # "name":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 258
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    move-object v0, p1

    check-cast v0, Ljavassist/CtPrimitiveType;

    .line 260
    .local v0, "pt":Ljavassist/CtPrimitiveType;
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    .end local v0    # "pt":Ljavassist/CtPrimitiveType;
    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 267
    :goto_1
    return-void
.end method

.method public static toJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .line 53
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJvmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .line 40
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJvmName(Ljavassist/CtClass;)Ljava/lang/String;
    .locals 1
    .param p0, "clazz"    # Ljavassist/CtClass;

    .line 61
    invoke-virtual {p0}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toPrimitiveClass(C)Ljavassist/CtClass;
    .locals 1
    .param p0, "c"    # C

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "type":Ljavassist/CtClass;
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 579
    :sswitch_0
    sget-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    .line 580
    goto :goto_0

    .line 603
    :sswitch_1
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    goto :goto_0

    .line 588
    :sswitch_2
    sget-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    .line 589
    goto :goto_0

    .line 594
    :sswitch_3
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    .line 595
    goto :goto_0

    .line 591
    :sswitch_4
    sget-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    .line 592
    goto :goto_0

    .line 597
    :sswitch_5
    sget-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    .line 598
    goto :goto_0

    .line 600
    :sswitch_6
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    .line 601
    goto :goto_0

    .line 582
    :sswitch_7
    sget-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    .line 583
    goto :goto_0

    .line 585
    :sswitch_8
    sget-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    .line 586
    nop

    .line 607
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_3
        0x53 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "desc"    # Ljava/lang/String;

    .line 717
    invoke-static {p0}, Ljavassist/bytecode/Descriptor$PrettyPrinter;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
