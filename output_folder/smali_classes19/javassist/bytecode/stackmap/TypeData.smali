.class public abstract Ljavassist/bytecode/stackmap/TypeData;
.super Ljava/lang/Object;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/stackmap/TypeData$UninitThis;,
        Ljavassist/bytecode/stackmap/TypeData$UninitData;,
        Ljavassist/bytecode/stackmap/TypeData$NullType;,
        Ljavassist/bytecode/stackmap/TypeData$ClassName;,
        Ljavassist/bytecode/stackmap/TypeData$UninitTypeVar;,
        Ljavassist/bytecode/stackmap/TypeData$ArrayElement;,
        Ljavassist/bytecode/stackmap/TypeData$ArrayType;,
        Ljavassist/bytecode/stackmap/TypeData$TypeVar;,
        Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;,
        Ljavassist/bytecode/stackmap/TypeData$BasicType;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aastore(Ljavassist/bytecode/stackmap/TypeData;Ljavassist/bytecode/stackmap/TypeData;Ljavassist/ClassPool;)V
    .locals 3
    .param p0, "array"    # Ljavassist/bytecode/stackmap/TypeData;
    .param p1, "value"    # Ljavassist/bytecode/stackmap/TypeData;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 588
    instance-of v0, p0, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    move-object v0, p0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-static {p1}, Ljavassist/bytecode/stackmap/TypeData$ArrayType;->make(Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->merge(Ljavassist/bytecode/stackmap/TypeData;)V

    .line 592
    :cond_0
    instance-of v0, p1, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    if-eqz v0, :cond_3

    .line 593
    instance-of v0, p0, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    if-eqz v0, :cond_1

    .line 594
    invoke-static {p0}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->make(Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;

    goto :goto_0

    .line 595
    :cond_1
    instance-of v0, p0, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    if-eqz v0, :cond_2

    .line 596
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v0

    if-nez v0, :cond_3

    .line 597
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData$ArrayElement;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1, v0, p2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 599
    .end local v0    # "type":Ljava/lang/String;
    goto :goto_0

    .line 602
    :cond_2
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad AASTORE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_3
    :goto_0
    return-void
.end method

.method public static commonSuperClass(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 6
    .param p0, "one"    # Ljavassist/CtClass;
    .param p1, "two"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 527
    move-object v0, p0

    .line 528
    .local v0, "deep":Ljavassist/CtClass;
    move-object v1, p1

    .line 529
    .local v1, "shallow":Ljavassist/CtClass;
    move-object v2, v1

    .line 530
    .local v2, "backupShallow":Ljavassist/CtClass;
    move-object v3, v0

    .line 535
    .local v3, "backupDeep":Ljavassist/CtClass;
    :goto_0
    invoke-static {v0, v1}, Ljavassist/bytecode/stackmap/TypeData;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 536
    return-object v0

    .line 538
    :cond_0
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v4

    .line 539
    .local v4, "deepSuper":Ljavassist/CtClass;
    invoke-virtual {v1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v5

    .line 541
    .local v5, "shallowSuper":Ljavassist/CtClass;
    if-nez v5, :cond_1

    .line 543
    move-object v1, v2

    .line 544
    goto :goto_1

    .line 547
    :cond_1
    if-nez v4, :cond_4

    .line 549
    move-object v0, v3

    .line 550
    move-object v3, v2

    .line 551
    move-object v2, v0

    .line 553
    move-object v0, v1

    .line 554
    move-object v1, v2

    .line 555
    nop

    .line 564
    .end local v4    # "deepSuper":Ljavassist/CtClass;
    .end local v5    # "shallowSuper":Ljavassist/CtClass;
    :goto_1
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    .line 565
    if-nez v0, :cond_3

    .line 566
    nop

    .line 571
    move-object v0, v3

    .line 575
    :goto_2
    invoke-static {v0, v1}, Ljavassist/bytecode/stackmap/TypeData;->eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 576
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    .line 577
    invoke-virtual {v1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v1

    goto :goto_2

    .line 580
    :cond_2
    return-object v0

    .line 568
    :cond_3
    invoke-virtual {v3}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v3

    goto :goto_1

    .line 558
    .restart local v4    # "deepSuper":Ljavassist/CtClass;
    .restart local v5    # "shallowSuper":Ljavassist/CtClass;
    :cond_4
    move-object v0, v4

    .line 559
    move-object v1, v5

    .line 560
    .end local v4    # "deepSuper":Ljavassist/CtClass;
    .end local v5    # "shallowSuper":Ljavassist/CtClass;
    goto :goto_0
.end method

.method public static commonSuperClassEx(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 6
    .param p0, "one"    # Ljavassist/CtClass;
    .param p1, "two"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 500
    if-ne p0, p1, :cond_0

    .line 501
    return-object p0

    .line 502
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    const-string v1, "java.lang.Object"

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 503
    invoke-virtual {p0}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0

    .line 504
    .local v0, "ele1":Ljavassist/CtClass;
    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v2

    .line 505
    .local v2, "ele2":Ljavassist/CtClass;
    invoke-static {v0, v2}, Ljavassist/bytecode/stackmap/TypeData;->commonSuperClassEx(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v3

    .line 506
    .local v3, "element":Ljavassist/CtClass;
    if-ne v3, v0, :cond_1

    .line 507
    return-object p0

    .line 508
    :cond_1
    if-ne v3, v2, :cond_2

    .line 509
    return-object p1

    .line 511
    :cond_2
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v4

    if-nez v3, :cond_3

    goto :goto_0

    .line 512
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "[]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    :goto_0
    invoke-virtual {v4, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    return-object v1

    .line 514
    .end local v0    # "ele1":Ljavassist/CtClass;
    .end local v2    # "ele2":Ljavassist/CtClass;
    .end local v3    # "element":Ljavassist/CtClass;
    :cond_4
    invoke-virtual {p0}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 516
    :cond_5
    invoke-virtual {p0}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 519
    :cond_6
    invoke-static {p0, p1}, Ljavassist/bytecode/stackmap/TypeData;->commonSuperClass(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0

    .line 517
    :cond_7
    :goto_1
    invoke-virtual {p0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0

    .line 515
    :cond_8
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static eq(Ljavassist/CtClass;Ljavassist/CtClass;)Z
    .locals 2
    .param p0, "one"    # Ljavassist/CtClass;
    .param p1, "two"    # Ljavassist/CtClass;

    .line 584
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static make(I)[Ljavassist/bytecode/stackmap/TypeData;
    .locals 3
    .param p0, "size"    # I

    .line 39
    new-array v0, p0, [Ljavassist/bytecode/stackmap/TypeData;

    .line 40
    .local v0, "array":[Ljavassist/bytecode/stackmap/TypeData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 41
    sget-object v2, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    aput-object v2, v0, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static setType(Ljavassist/bytecode/stackmap/TypeData;Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 0
    .param p0, "td"    # Ljavassist/bytecode/stackmap/TypeData;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/stackmap/TypeData;->setType(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 58
    return-void
.end method


# virtual methods
.method public constructorCalled(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 112
    return-void
.end method

.method public dfs(Ljava/util/List;ILjavassist/ClassPool;)I
    .locals 0
    .param p2, "index"    # I
    .param p3, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;I",
            "Ljavassist/ClassPool;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 99
    .local p1, "order":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    return p2
.end method

.method public abstract eq(Ljavassist/bytecode/stackmap/TypeData;)Z
.end method

.method public abstract getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTypeData(Ljavassist/bytecode/ConstPool;)I
.end method

.method public abstract getTypeTag()I
.end method

.method public abstract is2WordType()Z
.end method

.method public abstract isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;
.end method

.method public isNullType()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public isUninit()Z
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public join()Ljavassist/bytecode/stackmap/TypeData;
    .locals 1

    .line 63
    new-instance v0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    invoke-direct {v0, p0}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;-><init>(Ljavassist/bytecode/stackmap/TypeData;)V

    return-object v0
.end method

.method public abstract setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v1}, Ljavassist/bytecode/stackmap/TypeData;->toString2(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract toString2(Ljava/util/Set;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected toTypeVar(I)Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    .locals 1
    .param p1, "dim"    # I

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method
