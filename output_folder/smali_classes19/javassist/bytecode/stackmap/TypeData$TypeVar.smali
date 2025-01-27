.class public Ljavassist/bytecode/stackmap/TypeData$TypeVar;
.super Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;
.source "TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeVar"
.end annotation


# instance fields
.field private dimension:I

.field protected fixedType:Ljava/lang/String;

.field private inList:Z

.field private is2WordType:Z

.field protected lowers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;"
        }
    .end annotation
.end field

.field private smallest:I

.field protected uppers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected usedBy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;"
        }
    .end annotation
.end field

.field private visited:I


# direct methods
.method public constructor <init>(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 3
    .param p1, "t"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 221
    invoke-direct {p0}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;-><init>()V

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    .line 300
    iput v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    .line 301
    iput-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->inList:Z

    .line 302
    iput v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->dimension:I

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/List;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->usedBy:Ljava/util/List;

    .line 225
    invoke-virtual {p0, p1}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->merge(Ljavassist/bytecode/stackmap/TypeData;)V

    .line 226
    iput-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v0

    iput-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->is2WordType:Z

    .line 228
    return-void
.end method

.method private fixByUppers(Ljava/util/List;Ljavassist/ClassPool;Ljava/util/Set;Ljavassist/CtClass;)Ljavassist/CtClass;
    .locals 7
    .param p2, "cp"    # Ljavassist/ClassPool;
    .param p4, "type"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;",
            "Ljavassist/ClassPool;",
            "Ljava/util/Set<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;",
            "Ljavassist/CtClass;",
            ")",
            "Ljavassist/CtClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 458
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    .local p3, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljavassist/bytecode/stackmap/TypeData;>;"
    if-nez p1, :cond_0

    .line 459
    return-object p4

    .line 461
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 462
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 463
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    .line 464
    .local v2, "t":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 465
    return-object p4

    .line 467
    :cond_1
    iget-object v3, v2, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 468
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 469
    .local v3, "s":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 470
    iget-object v5, v2, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v5

    .line 471
    .local v5, "cc":Ljavassist/CtClass;
    invoke-virtual {v5, p4}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 472
    move-object p4, v5

    .line 469
    .end local v5    # "cc":Ljavassist/CtClass;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 476
    .end local v3    # "s":I
    .end local v4    # "k":I
    :cond_3
    iget-object v3, v2, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->usedBy:Ljava/util/List;

    invoke-direct {p0, v3, p2, p3, p4}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixByUppers(Ljava/util/List;Ljavassist/ClassPool;Ljava/util/Set;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object p4

    .line 462
    .end local v2    # "t":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "i":I
    :cond_4
    return-object p4
.end method

.method private fixTypes(Ljava/util/List;Ljavassist/ClassPool;)V
    .locals 13
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;",
            "Ljavassist/ClassPool;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 364
    .local p1, "scc":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 365
    .local v0, "lowersSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 366
    .local v1, "isBasicType":Z
    const/4 v2, 0x0

    .line 367
    .local v2, "kind":Ljavassist/bytecode/stackmap/TypeData;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 368
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_7

    .line 369
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    .line 370
    .local v5, "tvar":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    iget-object v6, v5, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    .line 371
    .local v6, "tds":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 372
    .local v7, "size2":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v7, :cond_6

    .line 373
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavassist/bytecode/stackmap/TypeData;

    .line 374
    .local v9, "td":Ljavassist/bytecode/stackmap/TypeData;
    iget v10, v5, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->dimension:I

    invoke-virtual {v9, v10}, Ljavassist/bytecode/stackmap/TypeData;->getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v10

    .line 375
    .local v10, "d":Ljavassist/bytecode/stackmap/TypeData;
    invoke-virtual {v10}, Ljavassist/bytecode/stackmap/TypeData;->isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;

    move-result-object v11

    .line 376
    .local v11, "bt":Ljavassist/bytecode/stackmap/TypeData$BasicType;
    if-nez v2, :cond_1

    .line 377
    if-nez v11, :cond_0

    .line 378
    const/4 v1, 0x0

    .line 379
    move-object v2, v10

    .line 384
    invoke-virtual {v10}, Ljavassist/bytecode/stackmap/TypeData;->isUninit()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 385
    goto :goto_3

    .line 388
    :cond_0
    const/4 v1, 0x1

    .line 389
    move-object v2, v11

    goto :goto_2

    .line 393
    :cond_1
    if-nez v11, :cond_2

    if-nez v1, :cond_3

    :cond_2
    if-eqz v11, :cond_4

    if-eq v2, v11, :cond_4

    .line 394
    :cond_3
    const/4 v1, 0x1

    .line 395
    sget-object v2, Ljavassist/bytecode/stackmap/TypeTag;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    .line 396
    goto :goto_3

    .line 400
    :cond_4
    :goto_2
    if-nez v11, :cond_5

    invoke-virtual {v10}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v12

    if-nez v12, :cond_5

    .line 401
    invoke-virtual {v10}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v9    # "td":Ljavassist/bytecode/stackmap/TypeData;
    .end local v10    # "d":Ljavassist/bytecode/stackmap/TypeData;
    .end local v11    # "bt":Ljavassist/bytecode/stackmap/TypeData$BasicType;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 368
    .end local v5    # "tvar":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    .end local v6    # "tds":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    .end local v7    # "size2":I
    .end local v8    # "j":I
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 405
    .end local v4    # "i":I
    :cond_7
    if-eqz v1, :cond_8

    .line 406
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v4

    iput-boolean v4, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->is2WordType:Z

    .line 407
    invoke-direct {p0, p1, v2}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixTypes1(Ljava/util/List;Ljavassist/bytecode/stackmap/TypeData;)V

    goto :goto_4

    .line 410
    :cond_8
    invoke-direct {p0, p1, v0, p2}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixTypes2(Ljava/util/List;Ljava/util/Set;Ljavassist/ClassPool;)Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, "typeName":Ljava/lang/String;
    new-instance v5, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v5, v4}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v5}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixTypes1(Ljava/util/List;Ljavassist/bytecode/stackmap/TypeData;)V

    .line 413
    .end local v4    # "typeName":Ljava/lang/String;
    :goto_4
    return-void
.end method

.method private fixTypes1(Ljava/util/List;Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 5
    .param p2, "kind"    # Ljavassist/bytecode/stackmap/TypeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 416
    .local p1, "scc":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 417
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 418
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    .line 419
    .local v2, "cv":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    iget v3, v2, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->dimension:I

    neg-int v3, v3

    invoke-virtual {p2, v3}, Ljavassist/bytecode/stackmap/TypeData;->getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v3

    .line 420
    .local v3, "kind2":Ljavassist/bytecode/stackmap/TypeData;
    invoke-virtual {v3}, Ljavassist/bytecode/stackmap/TypeData;->isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;

    move-result-object v4

    if-nez v4, :cond_0

    .line 421
    invoke-virtual {v3}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    goto :goto_1

    .line 423
    :cond_0
    iget-object v4, v2, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 424
    iget-object v4, v2, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {v3}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v4

    iput-boolean v4, v2, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->is2WordType:Z

    .line 417
    .end local v2    # "cv":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    .end local v3    # "kind2":Ljavassist/bytecode/stackmap/TypeData;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private fixTypes2(Ljava/util/List;Ljava/util/Set;Ljavassist/ClassPool;)Ljava/lang/String;
    .locals 3
    .param p3, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljavassist/ClassPool;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 431
    .local p1, "scc":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    .local p2, "lowersSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 432
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 433
    const/4 v1, 0x0

    return-object v1

    .line 434
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 435
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 437
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    .line 438
    .local v1, "cc":Ljavassist/CtClass;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 439
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    invoke-static {v1, v2}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->commonSuperClassEx(Ljavassist/CtClass;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v1

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {v1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->isObjectArray(Ljavassist/CtClass;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 442
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p3, v2, v1}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixByUppers(Ljava/util/List;Ljavassist/ClassPool;Ljava/util/Set;Ljavassist/CtClass;)Ljavassist/CtClass;

    move-result-object v1

    .line 444
    :cond_4
    invoke-virtual {v1}, Ljavassist/CtClass;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 445
    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 447
    :cond_5
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static isObjectArray(Ljavassist/CtClass;)Z
    .locals 1
    .param p0, "cc"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dfs(Ljava/util/List;ILjavassist/ClassPool;)I
    .locals 6
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

    .line 329
    .local p1, "preOrder":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    iget v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    if-lez v0, :cond_0

    .line 330
    return p2

    .line 332
    :cond_0
    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    iput p2, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    .line 333
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iput-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->inList:Z

    .line 335
    iget-object v1, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 336
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 337
    iget-object v3, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/stackmap/TypeData;

    iget v4, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->dimension:I

    invoke-virtual {v3, v4}, Ljavassist/bytecode/stackmap/TypeData;->toTypeVar(I)Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    move-result-object v3

    .line 338
    .local v3, "child":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    if-eqz v3, :cond_2

    .line 339
    iget v4, v3, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    if-nez v4, :cond_1

    .line 340
    invoke-virtual {v3, p1, p2, p3}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->dfs(Ljava/util/List;ILjavassist/ClassPool;)I

    move-result p2

    .line 341
    iget v4, v3, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    iget v5, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    if-ge v4, v5, :cond_2

    .line 342
    iput v4, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    goto :goto_1

    .line 344
    :cond_1
    iget-boolean v5, v3, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->inList:Z

    if-eqz v5, :cond_2

    .line 345
    iget v5, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    if-ge v4, v5, :cond_2

    .line 346
    iput v4, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    .line 336
    .end local v3    # "child":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "i":I
    :cond_3
    iget v2, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->visited:I

    iget v3, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->smallest:I

    if-ne v2, v3, :cond_5

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v2, "scc":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    .line 354
    .local v3, "cv":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->inList:Z

    .line 355
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    if-ne v3, p0, :cond_4

    .line 357
    invoke-direct {p0, v2, p3}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixTypes(Ljava/util/List;Ljavassist/ClassPool;)V

    .line 360
    .end local v2    # "scc":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    .end local v3    # "cv":Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    :cond_5
    return p2
.end method

.method public getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;
    .locals 3
    .param p1, "dim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 315
    if-nez p1, :cond_0

    .line 316
    return-object p0

    .line 317
    :cond_0
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;

    move-result-object v0

    .line 318
    .local v0, "bt":Ljavassist/bytecode/stackmap/TypeData$BasicType;
    if-nez v0, :cond_2

    .line 319
    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->isNullType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$NullType;

    invoke-direct {v1}, Ljavassist/bytecode/stackmap/TypeData$NullType;-><init>()V

    return-object v1

    .line 322
    :cond_1
    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-virtual {p0}, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;->getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v1

    return-object v1

    .line 323
    :cond_2
    invoke-virtual {v0, p1}, Ljavassist/bytecode/stackmap/TypeData$BasicType;->getArrayType(I)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 232
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    return-object v0
.end method

.method public getTypeData(Ljavassist/bytecode/ConstPool;)I
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 286
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/stackmap/TypeData;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result v0

    return v0

    .line 288
    :cond_0
    invoke-super {p0, p1}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result v0

    return v0
.end method

.method public getTypeTag()I
    .locals 2

    .line 279
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->getTypeTag()I

    move-result v0

    return v0

    .line 281
    :cond_0
    invoke-super {p0}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->getTypeTag()I

    move-result v0

    return v0
.end method

.method public is2WordType()Z
    .locals 1

    .line 246
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 247
    iget-boolean v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->is2WordType:Z

    return v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;
    .locals 2

    .line 239
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->isBasicType()Ljavassist/bytecode/stackmap/TypeData$BasicType;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNullType()Z
    .locals 2

    .line 255
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->isNullType()Z

    move-result v0

    return v0

    .line 257
    :cond_0
    return v1
.end method

.method public isUninit()Z
    .locals 2

    .line 262
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->fixedType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->isUninit()Z

    move-result v0

    return v0

    .line 264
    :cond_0
    return v1
.end method

.method public merge(Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 1
    .param p1, "t"    # Ljavassist/bytecode/stackmap/TypeData;

    .line 269
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    instance-of v0, p1, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    if-eqz v0, :cond_0

    .line 271
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;

    iget-object v0, v0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->usedBy:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/List;

    .line 296
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->uppers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method toString2(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavassist/bytecode/stackmap/TypeData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 484
    .local p1, "hash":Ljava/util/Set;, "Ljava/util/Set<Ljavassist/bytecode/stackmap/TypeData;>;"
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 486
    iget-object v0, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->lowers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData;

    .line 487
    .local v0, "e":Ljavassist/bytecode/stackmap/TypeData;
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    invoke-virtual {v0, p1}, Ljavassist/bytecode/stackmap/TypeData;->toString2(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 491
    .end local v0    # "e":Ljavassist/bytecode/stackmap/TypeData;
    :cond_0
    const-string v0, "?"

    return-object v0
.end method

.method protected toTypeVar(I)Ljavassist/bytecode/stackmap/TypeData$TypeVar;
    .locals 0
    .param p1, "dim"    # I

    .line 306
    iput p1, p0, Ljavassist/bytecode/stackmap/TypeData$TypeVar;->dimension:I

    .line 307
    return-object p0
.end method
