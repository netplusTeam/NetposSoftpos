.class public Ljavassist/bytecode/stackmap/MapMaker;
.super Ljavassist/bytecode/stackmap/Tracer;
.source "MapMaker.java"


# direct methods
.method public constructor <init>(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;)V
    .locals 6
    .param p1, "classes"    # Ljavassist/ClassPool;
    .param p2, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p3, "ca"    # Ljavassist/bytecode/CodeAttribute;

    .line 159
    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 160
    invoke-virtual {p3}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v3

    invoke-virtual {p3}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v4

    .line 161
    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypedBlock;->getRetType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/Tracer;-><init>(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;IILjava/lang/String;)V

    .line 162
    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/stackmap/MapMaker;)V
    .locals 0
    .param p1, "old"    # Ljavassist/bytecode/stackmap/MapMaker;

    .line 164
    invoke-direct {p0, p1}, Ljavassist/bytecode/stackmap/Tracer;-><init>(Ljavassist/bytecode/stackmap/Tracer;)V

    return-void
.end method

.method protected static copyTypeData(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 2
    .param p0, "n"    # I
    .param p1, "srcTypes"    # [Ljavassist/bytecode/stackmap/TypeData;
    .param p2, "destTypes"    # [Ljavassist/bytecode/stackmap/TypeData;

    .line 312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 313
    aget-object v1, p1, v0

    aput-object v1, p2, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static diffSize([Ljavassist/bytecode/stackmap/TypeData;II)I
    .locals 3
    .param p0, "types"    # [Ljavassist/bytecode/stackmap/TypeData;
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "num":I
    :goto_0
    if-ge p1, p2, :cond_1

    .line 547
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "offset":I
    .local v1, "offset":I
    aget-object p1, p0, p1

    .line 548
    .local p1, "td":Ljavassist/bytecode/stackmap/TypeData;
    add-int/lit8 v0, v0, 0x1

    .line 549
    invoke-virtual {p1}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    add-int/lit8 v1, v1, 0x1

    move p1, v1

    goto :goto_1

    .line 549
    :cond_0
    move p1, v1

    .line 551
    .end local v1    # "offset":I
    .local p1, "offset":I
    :goto_1
    goto :goto_0

    .line 553
    :cond_1
    return v0
.end method

.method private fillStackMap(II[I[Ljavassist/bytecode/stackmap/TypeData;)[I
    .locals 7
    .param p1, "num"    # I
    .param p2, "offset"    # I
    .param p3, "data"    # [I
    .param p4, "types"    # [Ljavassist/bytecode/stackmap/TypeData;

    .line 500
    add-int v0, p2, p1

    invoke-static {p4, p2, v0}, Ljavassist/bytecode/stackmap/MapMaker;->diffSize([Ljavassist/bytecode/stackmap/TypeData;II)I

    move-result v0

    .line 501
    .local v0, "realNum":I
    iget-object v1, p0, Ljavassist/bytecode/stackmap/MapMaker;->cpool:Ljavassist/bytecode/ConstPool;

    .line 502
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    new-array v2, v0, [I

    .line 503
    .local v2, "tags":[I
    const/4 v3, 0x0

    .line 504
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 505
    add-int v5, p2, v4

    aget-object v5, p4, v5

    .line 506
    .local v5, "td":Ljavassist/bytecode/stackmap/TypeData;
    invoke-virtual {v5}, Ljavassist/bytecode/stackmap/TypeData;->getTypeTag()I

    move-result v6

    aput v6, v2, v3

    .line 507
    invoke-virtual {v5, v1}, Ljavassist/bytecode/stackmap/TypeData;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result v6

    aput v6, p3, v3

    .line 508
    invoke-virtual {v5}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 509
    add-int/lit8 v4, v4, 0x1

    .line 511
    :cond_0
    nop

    .end local v5    # "td":Ljavassist/bytecode/stackmap/TypeData;
    add-int/lit8 v3, v3, 0x1

    .line 504
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 514
    .end local v4    # "i":I
    :cond_1
    return-object v2
.end method

.method private findDeadCatchers([B[Ljavassist/bytecode/stackmap/TypedBlock;)V
    .locals 6
    .param p1, "code"    # [B
    .param p2, "blocks"    # [Ljavassist/bytecode/stackmap/TypedBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 334
    array-length v0, p2

    .line 335
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 336
    aget-object v2, p2, v1

    .line 337
    .local v2, "block":Ljavassist/bytecode/stackmap/TypedBlock;
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypedBlock;->alreadySet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    invoke-direct {p0, p1, v2}, Ljavassist/bytecode/stackmap/MapMaker;->fixDeadcode([BLjavassist/bytecode/stackmap/TypedBlock;)V

    .line 339
    iget-object v3, v2, Ljavassist/bytecode/stackmap/TypedBlock;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    .line 340
    .local v3, "handler":Ljavassist/bytecode/stackmap/BasicBlock$Catch;
    if-eqz v3, :cond_0

    .line 341
    iget-object v4, v3, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->body:Ljavassist/bytecode/stackmap/BasicBlock;

    check-cast v4, Ljavassist/bytecode/stackmap/TypedBlock;

    .line 342
    .local v4, "tb":Ljavassist/bytecode/stackmap/TypedBlock;
    invoke-virtual {v4}, Ljavassist/bytecode/stackmap/TypedBlock;->alreadySet()Z

    move-result v5

    if-nez v5, :cond_0

    .line 345
    iget v5, v3, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->typeIndex:I

    invoke-direct {p0, v4, v5}, Ljavassist/bytecode/stackmap/MapMaker;->recordStackMap(Ljavassist/bytecode/stackmap/TypedBlock;I)V

    .line 346
    invoke-direct {p0, p1, v4}, Ljavassist/bytecode/stackmap/MapMaker;->fixDeadcode([BLjavassist/bytecode/stackmap/TypedBlock;)V

    .line 347
    const/4 v5, 0x1

    iput v5, v4, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    .line 335
    .end local v2    # "block":Ljavassist/bytecode/stackmap/TypedBlock;
    .end local v3    # "handler":Ljavassist/bytecode/stackmap/BasicBlock$Catch;
    .end local v4    # "tb":Ljavassist/bytecode/stackmap/TypedBlock;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private fixDeadcode([BLjavassist/bytecode/stackmap/TypedBlock;)V
    .locals 6
    .param p1, "code"    # [B
    .param p2, "block"    # Ljavassist/bytecode/stackmap/TypedBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 356
    iget v0, p2, Ljavassist/bytecode/stackmap/TypedBlock;->position:I

    .line 357
    .local v0, "pos":I
    iget v1, p2, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    add-int/lit8 v1, v1, -0x3

    .line 358
    .local v1, "len":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_1

    .line 360
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 361
    aput-byte v3, p1, v0

    .line 363
    :cond_0
    iget v4, p2, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v2

    const/16 v5, -0x41

    aput-byte v5, p1, v4

    .line 364
    iput v2, p2, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    .line 365
    invoke-direct {p0, p2, v3}, Ljavassist/bytecode/stackmap/MapMaker;->recordStackMap(Ljavassist/bytecode/stackmap/TypedBlock;I)V

    .line 366
    return-void

    .line 371
    :cond_1
    iput v3, p2, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    .line 373
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 374
    add-int v5, v0, v4

    aput-byte v3, p1, v5

    .line 373
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    .end local v4    # "k":I
    :cond_2
    add-int v3, v0, v1

    const/16 v4, -0x59

    aput-byte v4, p1, v3

    .line 377
    neg-int v3, v1

    add-int v4, v0, v1

    add-int/2addr v4, v2

    invoke-static {v3, p1, v4}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 378
    return-void
.end method

.method private fixTypes([B[Ljavassist/bytecode/stackmap/TypedBlock;)V
    .locals 9
    .param p1, "code"    # [B
    .param p2, "blocks"    # [Ljavassist/bytecode/stackmap/TypedBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v0, "preOrder":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/TypeData;>;"
    array-length v1, p2

    .line 392
    .local v1, "len":I
    const/4 v2, 0x0

    .line 393
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 394
    aget-object v4, p2, v3

    .line 395
    .local v4, "block":Ljavassist/bytecode/stackmap/TypedBlock;
    invoke-virtual {v4}, Ljavassist/bytecode/stackmap/TypedBlock;->alreadySet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    iget-object v5, v4, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v5, v5

    .line 397
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 398
    iget-object v7, v4, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v7, v7, v6

    iget-object v8, p0, Ljavassist/bytecode/stackmap/MapMaker;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v7, v0, v2, v8}, Ljavassist/bytecode/stackmap/TypeData;->dfs(Ljava/util/List;ILjavassist/ClassPool;)I

    move-result v2

    .line 397
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 400
    .end local v6    # "j":I
    :cond_0
    iget v5, v4, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    .line 401
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_2
    if-ge v6, v5, :cond_1

    .line 402
    iget-object v7, v4, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v7, v7, v6

    iget-object v8, p0, Ljavassist/bytecode/stackmap/MapMaker;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v7, v0, v2, v8}, Ljavassist/bytecode/stackmap/TypeData;->dfs(Ljava/util/List;ILjavassist/ClassPool;)I

    move-result v2

    .line 401
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 393
    .end local v4    # "block":Ljavassist/bytecode/stackmap/TypedBlock;
    .end local v5    # "n":I
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private isTarget(Ljavassist/bytecode/stackmap/TypedBlock;Ljavassist/bytecode/stackmap/TypedBlock;)Z
    .locals 2
    .param p1, "cur"    # Ljavassist/bytecode/stackmap/TypedBlock;
    .param p2, "prev"    # Ljavassist/bytecode/stackmap/TypedBlock;

    .line 445
    iget v0, p1, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    .line 446
    .local v0, "in":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 447
    return v1

    .line 448
    :cond_0
    if-ge v0, v1, :cond_1

    .line 449
    const/4 v1, 0x0

    return v1

    .line 451
    :cond_1
    iget-boolean v1, p2, Ljavassist/bytecode/stackmap/TypedBlock;->stop:Z

    return v1
.end method

.method public static make(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;)Ljavassist/bytecode/StackMapTable;
    .locals 5
    .param p0, "classes"    # Ljavassist/ClassPool;
    .param p1, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 100
    .local v0, "ca":Ljavassist/bytecode/CodeAttribute;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    return-object v1

    .line 105
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v0, v2}, Ljavassist/bytecode/stackmap/TypedBlock;->makeBlocks(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;Z)[Ljavassist/bytecode/stackmap/TypedBlock;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/bytecode/stackmap/BasicBlock$JsrBytecode; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .local v2, "blocks":[Ljavassist/bytecode/stackmap/TypedBlock;
    nop

    .line 111
    if-nez v2, :cond_1

    .line 112
    return-object v1

    .line 114
    :cond_1
    new-instance v1, Ljavassist/bytecode/stackmap/MapMaker;

    invoke-direct {v1, p0, p1, v0}, Ljavassist/bytecode/stackmap/MapMaker;-><init>(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;)V

    .line 116
    .local v1, "mm":Ljavassist/bytecode/stackmap/MapMaker;
    :try_start_1
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getCode()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavassist/bytecode/stackmap/MapMaker;->make([Ljavassist/bytecode/stackmap/TypedBlock;[B)V
    :try_end_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    nop

    .line 122
    invoke-virtual {v1, v2}, Ljavassist/bytecode/stackmap/MapMaker;->toStackMap([Ljavassist/bytecode/stackmap/TypedBlock;)Ljavassist/bytecode/StackMapTable;

    move-result-object v3

    return-object v3

    .line 118
    :catch_0
    move-exception v3

    .line 119
    .local v3, "bb":Ljavassist/bytecode/BadBytecode;
    new-instance v4, Ljavassist/bytecode/BadBytecode;

    invoke-direct {v4, p1, v3}, Ljavassist/bytecode/BadBytecode;-><init>(Ljavassist/bytecode/MethodInfo;Ljava/lang/Throwable;)V

    throw v4

    .line 107
    .end local v1    # "mm":Ljavassist/bytecode/stackmap/MapMaker;
    .end local v2    # "blocks":[Ljavassist/bytecode/stackmap/TypedBlock;
    .end local v3    # "bb":Ljavassist/bytecode/BadBytecode;
    :catch_1
    move-exception v2

    .line 108
    .local v2, "e":Ljavassist/bytecode/stackmap/BasicBlock$JsrBytecode;
    return-object v1
.end method

.method private make([BLjavassist/bytecode/stackmap/TypedBlock;)V
    .locals 5
    .param p1, "code"    # [B
    .param p2, "tb"    # Ljavassist/bytecode/stackmap/TypedBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 186
    iget v0, p2, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    iget-object v1, p2, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget-object v2, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/stackmap/MapMaker;->copyTypeData(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)V

    .line 187
    iget v0, p2, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    iput v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTop:I

    .line 188
    iget-object v0, p2, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    iget-object v1, p2, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget-object v2, p0, Ljavassist/bytecode/stackmap/MapMaker;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/stackmap/MapMaker;->copyTypeData(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)V

    .line 190
    iget-object v0, p2, Ljavassist/bytecode/stackmap/TypedBlock;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/stackmap/MapMaker;->traceException([BLjavassist/bytecode/stackmap/BasicBlock$Catch;)V

    .line 192
    iget v0, p2, Ljavassist/bytecode/stackmap/TypedBlock;->position:I

    .line 193
    .local v0, "pos":I
    iget v1, p2, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    add-int/2addr v1, v0

    .line 194
    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 195
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/stackmap/MapMaker;->doOpcode(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 196
    iget-object v2, p2, Ljavassist/bytecode/stackmap/TypedBlock;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    invoke-direct {p0, p1, v2}, Ljavassist/bytecode/stackmap/MapMaker;->traceException([BLjavassist/bytecode/stackmap/BasicBlock$Catch;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v2, p2, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    if-eqz v2, :cond_2

    .line 200
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p2, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 201
    iget-object v3, p2, Ljavassist/bytecode/stackmap/TypedBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    aget-object v3, v3, v2

    check-cast v3, Ljavassist/bytecode/stackmap/TypedBlock;

    .line 202
    .local v3, "e":Ljavassist/bytecode/stackmap/TypedBlock;
    invoke-virtual {v3}, Ljavassist/bytecode/stackmap/TypedBlock;->alreadySet()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Ljavassist/bytecode/stackmap/MapMaker;->mergeMap(Ljavassist/bytecode/stackmap/TypedBlock;Z)V

    goto :goto_2

    .line 205
    :cond_1
    invoke-direct {p0, v3}, Ljavassist/bytecode/stackmap/MapMaker;->recordStackMap(Ljavassist/bytecode/stackmap/TypedBlock;)V

    .line 206
    new-instance v4, Ljavassist/bytecode/stackmap/MapMaker;

    invoke-direct {v4, p0}, Ljavassist/bytecode/stackmap/MapMaker;-><init>(Ljavassist/bytecode/stackmap/MapMaker;)V

    .line 207
    .local v4, "maker":Ljavassist/bytecode/stackmap/MapMaker;
    invoke-direct {v4, p1, v3}, Ljavassist/bytecode/stackmap/MapMaker;->make([BLjavassist/bytecode/stackmap/TypedBlock;)V

    .line 200
    .end local v3    # "e":Ljavassist/bytecode/stackmap/TypedBlock;
    .end local v4    # "maker":Ljavassist/bytecode/stackmap/MapMaker;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 211
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public static make2(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;)Ljavassist/bytecode/StackMap;
    .locals 5
    .param p0, "classes"    # Ljavassist/ClassPool;
    .param p1, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 134
    .local v0, "ca":Ljavassist/bytecode/CodeAttribute;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    return-object v1

    .line 139
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v0, v2}, Ljavassist/bytecode/stackmap/TypedBlock;->makeBlocks(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;Z)[Ljavassist/bytecode/stackmap/TypedBlock;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/bytecode/stackmap/BasicBlock$JsrBytecode; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    .local v2, "blocks":[Ljavassist/bytecode/stackmap/TypedBlock;
    nop

    .line 145
    if-nez v2, :cond_1

    .line 146
    return-object v1

    .line 148
    :cond_1
    new-instance v1, Ljavassist/bytecode/stackmap/MapMaker;

    invoke-direct {v1, p0, p1, v0}, Ljavassist/bytecode/stackmap/MapMaker;-><init>(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeAttribute;)V

    .line 150
    .local v1, "mm":Ljavassist/bytecode/stackmap/MapMaker;
    :try_start_1
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getCode()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavassist/bytecode/stackmap/MapMaker;->make([Ljavassist/bytecode/stackmap/TypedBlock;[B)V
    :try_end_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    nop

    .line 155
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljavassist/bytecode/stackmap/MapMaker;->toStackMap2(Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/stackmap/TypedBlock;)Ljavassist/bytecode/StackMap;

    move-result-object v3

    return-object v3

    .line 152
    :catch_0
    move-exception v3

    .line 153
    .local v3, "bb":Ljavassist/bytecode/BadBytecode;
    new-instance v4, Ljavassist/bytecode/BadBytecode;

    invoke-direct {v4, p1, v3}, Ljavassist/bytecode/BadBytecode;-><init>(Ljavassist/bytecode/MethodInfo;Ljava/lang/Throwable;)V

    throw v4

    .line 141
    .end local v1    # "mm":Ljavassist/bytecode/stackmap/MapMaker;
    .end local v2    # "blocks":[Ljavassist/bytecode/stackmap/TypedBlock;
    .end local v3    # "bb":Ljavassist/bytecode/BadBytecode;
    :catch_1
    move-exception v2

    .line 142
    .local v2, "e":Ljavassist/bytecode/stackmap/BasicBlock$JsrBytecode;
    return-object v1
.end method

.method private merge(Ljavassist/bytecode/stackmap/TypeData;Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;
    .locals 2
    .param p1, "src"    # Ljavassist/bytecode/stackmap/TypeData;
    .param p2, "target"    # Ljavassist/bytecode/stackmap/TypeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 250
    if-ne p1, p2, :cond_0

    .line 251
    return-object p2

    .line 252
    :cond_0
    instance-of v0, p2, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    if-nez v0, :cond_3

    instance-of v0, p2, Ljavassist/bytecode/stackmap/TypeData$BasicType;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    instance-of v0, p2, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    if-eqz v0, :cond_2

    .line 256
    move-object v0, p2

    check-cast v0, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/stackmap/TypeData$AbsTypeVar;->merge(Ljavassist/bytecode/stackmap/TypeData;)V

    .line 257
    return-object p2

    .line 260
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fatal: this should never happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_3
    :goto_0
    return-object p2
.end method

.method private mergeMap(Ljavassist/bytecode/stackmap/TypedBlock;Z)V
    .locals 5
    .param p1, "dest"    # Ljavassist/bytecode/stackmap/TypedBlock;
    .param p2, "mergeStack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    .line 238
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 239
    iget-object v2, p1, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget-object v3, p0, Ljavassist/bytecode/stackmap/MapMaker;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {v3, v0, v1}, Ljavassist/bytecode/stackmap/MapMaker;->validateTypeData([Ljavassist/bytecode/stackmap/TypeData;II)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v3

    iget-object v4, p1, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v4, v4, v1

    invoke-direct {p0, v3, v4}, Ljavassist/bytecode/stackmap/MapMaker;->merge(Ljavassist/bytecode/stackmap/TypeData;Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v3

    aput-object v3, v2, v1

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    .line 243
    iget v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTop:I

    .line 244
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 245
    iget-object v2, p1, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget-object v3, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v3, v3, v1

    iget-object v4, p1, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v4, v4, v1

    invoke-direct {p0, v3, v4}, Ljavassist/bytecode/stackmap/MapMaker;->merge(Ljavassist/bytecode/stackmap/TypeData;Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v3

    aput-object v3, v2, v1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private recordStackMap(Ljavassist/bytecode/stackmap/TypedBlock;)V
    .locals 3
    .param p1, "target"    # Ljavassist/bytecode/stackmap/TypedBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    .line 267
    .local v0, "tStackTypes":[Ljavassist/bytecode/stackmap/TypeData;
    iget v1, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTop:I

    .line 268
    .local v1, "st":I
    iget-object v2, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {v1, v2, v0}, Ljavassist/bytecode/stackmap/MapMaker;->recordTypeData(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)I

    .line 269
    invoke-direct {p0, p1, v1, v0}, Ljavassist/bytecode/stackmap/MapMaker;->recordStackMap0(Ljavassist/bytecode/stackmap/TypedBlock;I[Ljavassist/bytecode/stackmap/TypeData;)V

    .line 270
    return-void
.end method

.method private recordStackMap(Ljavassist/bytecode/stackmap/TypedBlock;I)V
    .locals 3
    .param p1, "target"    # Ljavassist/bytecode/stackmap/TypedBlock;
    .param p2, "exceptionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v0

    .line 276
    .local v0, "tStackTypes":[Ljavassist/bytecode/stackmap/TypeData;
    invoke-direct {p0, p2}, Ljavassist/bytecode/stackmap/MapMaker;->toExceptionType(I)Ljavassist/bytecode/stackmap/TypeData$ClassName;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/stackmap/TypeData$ClassName;->join()Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 277
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Ljavassist/bytecode/stackmap/MapMaker;->recordStackMap0(Ljavassist/bytecode/stackmap/TypedBlock;I[Ljavassist/bytecode/stackmap/TypeData;)V

    .line 278
    return-void
.end method

.method private recordStackMap0(Ljavassist/bytecode/stackmap/TypedBlock;I[Ljavassist/bytecode/stackmap/TypeData;)V
    .locals 3
    .param p1, "target"    # Ljavassist/bytecode/stackmap/TypedBlock;
    .param p2, "st"    # I
    .param p3, "tStackTypes"    # [Ljavassist/bytecode/stackmap/TypeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    array-length v0, v0

    .line 294
    .local v0, "n":I
    invoke-static {v0}, Ljavassist/bytecode/stackmap/TypeData;->make(I)[Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v1

    .line 295
    .local v1, "tLocalsTypes":[Ljavassist/bytecode/stackmap/TypeData;
    iget-object v2, p0, Ljavassist/bytecode/stackmap/MapMaker;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {v0, v2, v1}, Ljavassist/bytecode/stackmap/MapMaker;->recordTypeData(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)I

    move-result v2

    .line 296
    .local v2, "k":I
    invoke-virtual {p1, p2, p3, v2, v1}, Ljavassist/bytecode/stackmap/TypedBlock;->setStackMap(I[Ljavassist/bytecode/stackmap/TypeData;I[Ljavassist/bytecode/stackmap/TypeData;)V

    .line 297
    return-void
.end method

.method protected static recordTypeData(I[Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;)I
    .locals 4
    .param p0, "n"    # I
    .param p1, "srcTypes"    # [Ljavassist/bytecode/stackmap/TypeData;
    .param p2, "destTypes"    # [Ljavassist/bytecode/stackmap/TypeData;

    .line 300
    const/4 v0, -0x1

    .line 301
    .local v0, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    .line 302
    invoke-static {p1, p0, v1}, Ljavassist/bytecode/stackmap/MapMaker;->validateTypeData([Ljavassist/bytecode/stackmap/TypeData;II)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v2

    .line 303
    .local v2, "t":Ljavassist/bytecode/stackmap/TypeData;
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->join()Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v3

    aput-object v3, p2, v1

    .line 304
    sget-object v3, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    if-eq v2, v3, :cond_0

    .line 305
    add-int/lit8 v0, v1, 0x1

    .line 301
    .end local v2    # "t":Ljavassist/bytecode/stackmap/TypeData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private static stackMapDiff(I[Ljavassist/bytecode/stackmap/TypeData;I[Ljavassist/bytecode/stackmap/TypeData;)I
    .locals 3
    .param p0, "oldTdLen"    # I
    .param p1, "oldTd"    # [Ljavassist/bytecode/stackmap/TypeData;
    .param p2, "newTdLen"    # I
    .param p3, "newTd"    # [Ljavassist/bytecode/stackmap/TypeData;

    .line 520
    sub-int v0, p2, p0

    .line 522
    .local v0, "diff":I
    if-lez v0, :cond_0

    .line 523
    move v1, p0

    .local v1, "len":I
    goto :goto_0

    .line 525
    .end local v1    # "len":I
    :cond_0
    move v1, p2

    .line 527
    .restart local v1    # "len":I
    :goto_0
    invoke-static {p1, p3, v1}, Ljavassist/bytecode/stackmap/MapMaker;->stackMapEq([Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    if-lez v0, :cond_1

    .line 529
    invoke-static {p3, v1, p2}, Ljavassist/bytecode/stackmap/MapMaker;->diffSize([Ljavassist/bytecode/stackmap/TypeData;II)I

    move-result v2

    return v2

    .line 531
    :cond_1
    invoke-static {p1, v1, p0}, Ljavassist/bytecode/stackmap/MapMaker;->diffSize([Ljavassist/bytecode/stackmap/TypeData;II)I

    move-result v2

    neg-int v2, v2

    return v2

    .line 532
    :cond_2
    const/16 v2, -0x64

    return v2
.end method

.method private static stackMapEq([Ljavassist/bytecode/stackmap/TypeData;[Ljavassist/bytecode/stackmap/TypeData;I)Z
    .locals 3
    .param p0, "oldTd"    # [Ljavassist/bytecode/stackmap/TypeData;
    .param p1, "newTd"    # [Ljavassist/bytecode/stackmap/TypeData;
    .param p2, "len"    # I

    .line 536
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 537
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljavassist/bytecode/stackmap/TypeData;->eq(Ljavassist/bytecode/stackmap/TypeData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    const/4 v1, 0x0

    return v1

    .line 536
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private toExceptionType(I)Ljavassist/bytecode/stackmap/TypeData$ClassName;
    .locals 2
    .param p1, "exceptionType"    # I

    .line 282
    if-nez p1, :cond_0

    .line 283
    const-string v0, "java.lang.Throwable"

    .local v0, "type":Ljava/lang/String;
    goto :goto_0

    .line 285
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/stackmap/MapMaker;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .restart local v0    # "type":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljavassist/bytecode/stackmap/TypeData$ClassName;

    invoke-direct {v1, v0}, Ljavassist/bytecode/stackmap/TypeData$ClassName;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private toStackMapBody(Ljavassist/bytecode/StackMapTable$Writer;Ljavassist/bytecode/stackmap/TypedBlock;IILjavassist/bytecode/stackmap/TypedBlock;)V
    .locals 17
    .param p1, "writer"    # Ljavassist/bytecode/StackMapTable$Writer;
    .param p2, "bb"    # Ljavassist/bytecode/stackmap/TypedBlock;
    .param p3, "diffL"    # I
    .param p4, "offsetDelta"    # I
    .param p5, "prev"    # Ljavassist/bytecode/stackmap/TypedBlock;

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    iget v12, v8, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    .line 460
    .local v12, "stackTop":I
    const/4 v1, 0x0

    if-nez v12, :cond_2

    .line 461
    if-nez v9, :cond_0

    .line 462
    invoke-virtual {v7, v10}, Ljavassist/bytecode/StackMapTable$Writer;->sameFrame(I)V

    .line 463
    return-void

    .line 465
    :cond_0
    if-gez v9, :cond_1

    const/4 v2, -0x3

    if-lt v9, v2, :cond_1

    .line 466
    neg-int v1, v9

    invoke-virtual {v7, v10, v1}, Ljavassist/bytecode/StackMapTable$Writer;->chopFrame(II)V

    .line 467
    return-void

    .line 469
    :cond_1
    if-lez v9, :cond_4

    const/4 v2, 0x3

    if-gt v9, v2, :cond_4

    .line 470
    new-array v1, v9, [I

    .line 471
    .local v1, "data":[I
    iget v2, v8, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget v3, v11, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    sub-int/2addr v2, v3

    iget v3, v11, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget-object v4, v8, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {v0, v2, v3, v1, v4}, Ljavassist/bytecode/stackmap/MapMaker;->fillStackMap(II[I[Ljavassist/bytecode/stackmap/TypeData;)[I

    move-result-object v2

    .line 474
    .local v2, "tags":[I
    invoke-virtual {v7, v10, v2, v1}, Ljavassist/bytecode/StackMapTable$Writer;->appendFrame(I[I[I)V

    .line 475
    return-void

    .line 478
    .end local v1    # "data":[I
    .end local v2    # "tags":[I
    :cond_2
    const/4 v2, 0x1

    if-ne v12, v2, :cond_3

    if-nez v9, :cond_3

    .line 479
    iget-object v2, v8, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v1, v2, v1

    .line 480
    .local v1, "td":Ljavassist/bytecode/stackmap/TypeData;
    invoke-virtual {v1}, Ljavassist/bytecode/stackmap/TypeData;->getTypeTag()I

    move-result v2

    iget-object v3, v0, Ljavassist/bytecode/stackmap/MapMaker;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v3}, Ljavassist/bytecode/stackmap/TypeData;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result v3

    invoke-virtual {v7, v10, v2, v3}, Ljavassist/bytecode/StackMapTable$Writer;->sameLocals(III)V

    .line 481
    return-void

    .line 483
    .end local v1    # "td":Ljavassist/bytecode/stackmap/TypeData;
    :cond_3
    const/4 v2, 0x2

    if-ne v12, v2, :cond_4

    if-nez v9, :cond_4

    .line 484
    iget-object v2, v8, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v2, v2, v1

    .line 485
    .local v2, "td":Ljavassist/bytecode/stackmap/TypeData;
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 487
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->getTypeTag()I

    move-result v1

    iget-object v3, v0, Ljavassist/bytecode/stackmap/MapMaker;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, v3}, Ljavassist/bytecode/stackmap/TypeData;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result v3

    invoke-virtual {v7, v10, v1, v3}, Ljavassist/bytecode/StackMapTable$Writer;->sameLocals(III)V

    .line 488
    return-void

    .line 492
    .end local v2    # "td":Ljavassist/bytecode/stackmap/TypeData;
    :cond_4
    new-array v13, v12, [I

    .line 493
    .local v13, "sdata":[I
    iget-object v2, v8, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {v0, v12, v1, v13, v2}, Ljavassist/bytecode/stackmap/MapMaker;->fillStackMap(II[I[Ljavassist/bytecode/stackmap/TypeData;)[I

    move-result-object v14

    .line 494
    .local v14, "stags":[I
    iget v2, v8, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    new-array v15, v2, [I

    .line 495
    .local v15, "ldata":[I
    iget v2, v8, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget-object v3, v8, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-direct {v0, v2, v1, v15, v3}, Ljavassist/bytecode/stackmap/MapMaker;->fillStackMap(II[I[Ljavassist/bytecode/stackmap/TypeData;)[I

    move-result-object v16

    .line 496
    .local v16, "ltags":[I
    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, v16

    move-object v4, v15

    move-object v5, v14

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Ljavassist/bytecode/StackMapTable$Writer;->fullFrame(I[I[I[I[I)V

    .line 497
    return-void
.end method

.method private traceException([BLjavassist/bytecode/stackmap/BasicBlock$Catch;)V
    .locals 5
    .param p1, "code"    # [B
    .param p2, "handler"    # Ljavassist/bytecode/stackmap/BasicBlock$Catch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 216
    :goto_0
    if-eqz p2, :cond_2

    .line 217
    iget-object v0, p2, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->body:Ljavassist/bytecode/stackmap/BasicBlock;

    check-cast v0, Ljavassist/bytecode/stackmap/TypedBlock;

    .line 218
    .local v0, "tb":Ljavassist/bytecode/stackmap/TypedBlock;
    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypedBlock;->alreadySet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/stackmap/MapMaker;->mergeMap(Ljavassist/bytecode/stackmap/TypedBlock;Z)V

    .line 220
    iget v2, v0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 223
    iget-object v2, v0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v3, p2, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->typeIndex:I

    invoke-direct {p0, v3}, Ljavassist/bytecode/stackmap/MapMaker;->toExceptionType(I)Ljavassist/bytecode/stackmap/TypeData$ClassName;

    move-result-object v3

    iget-object v4, v0, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    aget-object v4, v4, v1

    invoke-direct {p0, v3, v4}, Ljavassist/bytecode/stackmap/MapMaker;->merge(Ljavassist/bytecode/stackmap/TypeData;Ljavassist/bytecode/stackmap/TypeData;)Ljavassist/bytecode/stackmap/TypeData;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    .line 221
    :cond_0
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad catch clause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->typeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_1
    iget v1, p2, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->typeIndex:I

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/stackmap/MapMaker;->recordStackMap(Ljavassist/bytecode/stackmap/TypedBlock;I)V

    .line 228
    new-instance v1, Ljavassist/bytecode/stackmap/MapMaker;

    invoke-direct {v1, p0}, Ljavassist/bytecode/stackmap/MapMaker;-><init>(Ljavassist/bytecode/stackmap/MapMaker;)V

    .line 229
    .local v1, "maker":Ljavassist/bytecode/stackmap/MapMaker;
    invoke-direct {v1, p1, v0}, Ljavassist/bytecode/stackmap/MapMaker;->make([BLjavassist/bytecode/stackmap/TypedBlock;)V

    .line 232
    .end local v1    # "maker":Ljavassist/bytecode/stackmap/MapMaker;
    :goto_1
    iget-object p2, p2, Ljavassist/bytecode/stackmap/BasicBlock$Catch;->next:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    .line 233
    .end local v0    # "tb":Ljavassist/bytecode/stackmap/TypedBlock;
    goto :goto_0

    .line 234
    :cond_2
    return-void
.end method

.method private static validateTypeData([Ljavassist/bytecode/stackmap/TypeData;II)Ljavassist/bytecode/stackmap/TypeData;
    .locals 3
    .param p0, "data"    # [Ljavassist/bytecode/stackmap/TypeData;
    .param p1, "length"    # I
    .param p2, "index"    # I

    .line 317
    aget-object v0, p0, p2

    .line 318
    .local v0, "td":Ljavassist/bytecode/stackmap/TypeData;
    invoke-virtual {v0}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    if-ge v1, p1, :cond_0

    .line 319
    add-int/lit8 v1, p2, 0x1

    aget-object v1, p0, v1

    sget-object v2, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    if-eq v1, v2, :cond_0

    .line 320
    sget-object v1, Ljavassist/bytecode/stackmap/MapMaker;->TOP:Ljavassist/bytecode/stackmap/TypeData$BasicType;

    return-object v1

    .line 322
    :cond_0
    return-object v0
.end method

.method private writeStackFrame(Ljavassist/bytecode/StackMap$Writer;Ljavassist/bytecode/ConstPool;ILjavassist/bytecode/stackmap/TypedBlock;)V
    .locals 2
    .param p1, "writer"    # Ljavassist/bytecode/StackMap$Writer;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p3, "offset"    # I
    .param p4, "tb"    # Ljavassist/bytecode/stackmap/TypedBlock;

    .line 589
    invoke-virtual {p1, p3}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    .line 590
    iget-object v0, p4, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p4, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    invoke-direct {p0, p1, p2, v0, v1}, Ljavassist/bytecode/stackmap/MapMaker;->writeVerifyTypeInfo(Ljavassist/bytecode/StackMap$Writer;Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/stackmap/TypeData;I)V

    .line 591
    iget-object v0, p4, Ljavassist/bytecode/stackmap/TypedBlock;->stackTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v1, p4, Ljavassist/bytecode/stackmap/TypedBlock;->stackTop:I

    invoke-direct {p0, p1, p2, v0, v1}, Ljavassist/bytecode/stackmap/MapMaker;->writeVerifyTypeInfo(Ljavassist/bytecode/StackMap$Writer;Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/stackmap/TypeData;I)V

    .line 592
    return-void
.end method

.method private writeVerifyTypeInfo(Ljavassist/bytecode/StackMap$Writer;Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/stackmap/TypeData;I)V
    .locals 5
    .param p1, "writer"    # Ljavassist/bytecode/StackMap$Writer;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p3, "types"    # [Ljavassist/bytecode/stackmap/TypeData;
    .param p4, "num"    # I

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "numDWord":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 597
    aget-object v2, p3, v1

    .line 598
    .local v2, "td":Ljavassist/bytecode/stackmap/TypeData;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    add-int/lit8 v0, v0, 0x1

    .line 600
    add-int/lit8 v1, v1, 0x1

    .line 596
    .end local v2    # "td":Ljavassist/bytecode/stackmap/TypeData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "i":I
    :cond_1
    sub-int v1, p4, v0

    invoke-virtual {p1, v1}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    .line 605
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p4, :cond_3

    .line 606
    aget-object v2, p3, v1

    .line 607
    .restart local v2    # "td":Ljavassist/bytecode/stackmap/TypeData;
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->getTypeTag()I

    move-result v3

    invoke-virtual {v2, p2}, Ljavassist/bytecode/stackmap/TypeData;->getTypeData(Ljavassist/bytecode/ConstPool;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljavassist/bytecode/StackMap$Writer;->writeVerifyTypeInfo(II)V

    .line 608
    invoke-virtual {v2}, Ljavassist/bytecode/stackmap/TypeData;->is2WordType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 609
    add-int/lit8 v1, v1, 0x1

    .line 605
    .end local v2    # "td":Ljavassist/bytecode/stackmap/TypeData;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 611
    .end local v1    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method make([Ljavassist/bytecode/stackmap/TypedBlock;[B)V
    .locals 3
    .param p1, "blocks"    # [Ljavassist/bytecode/stackmap/TypedBlock;
    .param p2, "code"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, p2, v0}, Ljavassist/bytecode/stackmap/MapMaker;->make([BLjavassist/bytecode/stackmap/TypedBlock;)V

    .line 173
    invoke-direct {p0, p2, p1}, Ljavassist/bytecode/stackmap/MapMaker;->findDeadCatchers([B[Ljavassist/bytecode/stackmap/TypedBlock;)V

    .line 175
    :try_start_0
    invoke-direct {p0, p2, p1}, Ljavassist/bytecode/stackmap/MapMaker;->fixTypes([B[Ljavassist/bytecode/stackmap/TypedBlock;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    nop

    .line 179
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    const-string v2, "failed to resolve types"

    invoke-direct {v1, v2, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toStackMap([Ljavassist/bytecode/stackmap/TypedBlock;)Ljavassist/bytecode/StackMapTable;
    .locals 13
    .param p1, "blocks"    # [Ljavassist/bytecode/stackmap/TypedBlock;

    .line 410
    new-instance v0, Ljavassist/bytecode/StackMapTable$Writer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljavassist/bytecode/StackMapTable$Writer;-><init>(I)V

    .line 411
    .local v0, "writer":Ljavassist/bytecode/StackMapTable$Writer;
    array-length v1, p1

    .line 412
    .local v1, "n":I
    const/4 v2, 0x0

    aget-object v3, p1, v2

    .line 413
    .local v3, "prev":Ljavassist/bytecode/stackmap/TypedBlock;
    iget v4, v3, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    .line 414
    .local v4, "offsetDelta":I
    iget v5, v3, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    if-lez v5, :cond_0

    .line 415
    invoke-virtual {v0, v2}, Ljavassist/bytecode/StackMapTable$Writer;->sameFrame(I)V

    .line 416
    add-int/lit8 v4, v4, -0x1

    .line 419
    :cond_0
    const/4 v2, 0x1

    move v8, v2

    move-object v9, v3

    move v10, v4

    .end local v3    # "prev":Ljavassist/bytecode/stackmap/TypedBlock;
    .end local v4    # "offsetDelta":I
    .local v8, "i":I
    .local v9, "prev":Ljavassist/bytecode/stackmap/TypedBlock;
    .local v10, "offsetDelta":I
    :goto_0
    if-ge v8, v1, :cond_3

    .line 420
    aget-object v11, p1, v8

    .line 421
    .local v11, "bb":Ljavassist/bytecode/stackmap/TypedBlock;
    add-int/lit8 v2, v8, -0x1

    aget-object v2, p1, v2

    invoke-direct {p0, v11, v2}, Ljavassist/bytecode/stackmap/MapMaker;->isTarget(Ljavassist/bytecode/stackmap/TypedBlock;Ljavassist/bytecode/stackmap/TypedBlock;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    invoke-virtual {v11}, Ljavassist/bytecode/stackmap/TypedBlock;->resetNumLocals()V

    .line 423
    iget v2, v9, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget-object v3, v9, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    iget v4, v11, Ljavassist/bytecode/stackmap/TypedBlock;->numLocals:I

    iget-object v5, v11, Ljavassist/bytecode/stackmap/TypedBlock;->localsTypes:[Ljavassist/bytecode/stackmap/TypeData;

    invoke-static {v2, v3, v4, v5}, Ljavassist/bytecode/stackmap/MapMaker;->stackMapDiff(I[Ljavassist/bytecode/stackmap/TypeData;I[Ljavassist/bytecode/stackmap/TypeData;)I

    move-result v12

    .line 425
    .local v12, "diffL":I
    move-object v2, p0

    move-object v3, v0

    move-object v4, v11

    move v5, v12

    move v6, v10

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/stackmap/MapMaker;->toStackMapBody(Ljavassist/bytecode/StackMapTable$Writer;Ljavassist/bytecode/stackmap/TypedBlock;IILjavassist/bytecode/stackmap/TypedBlock;)V

    .line 426
    iget v2, v11, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    add-int/lit8 v2, v2, -0x1

    .line 427
    .end local v10    # "offsetDelta":I
    .local v2, "offsetDelta":I
    move-object v3, v11

    .line 428
    .end local v9    # "prev":Ljavassist/bytecode/stackmap/TypedBlock;
    .end local v12    # "diffL":I
    .restart local v3    # "prev":Ljavassist/bytecode/stackmap/TypedBlock;
    move v10, v2

    move-object v9, v3

    goto :goto_1

    .line 429
    .end local v2    # "offsetDelta":I
    .end local v3    # "prev":Ljavassist/bytecode/stackmap/TypedBlock;
    .restart local v9    # "prev":Ljavassist/bytecode/stackmap/TypedBlock;
    .restart local v10    # "offsetDelta":I
    :cond_1
    iget v2, v11, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    if-nez v2, :cond_2

    .line 431
    invoke-virtual {v0, v10}, Ljavassist/bytecode/StackMapTable$Writer;->sameFrame(I)V

    .line 432
    iget v2, v11, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    add-int/lit8 v2, v2, -0x1

    move v10, v2

    .end local v10    # "offsetDelta":I
    .restart local v2    # "offsetDelta":I
    goto :goto_1

    .line 435
    .end local v2    # "offsetDelta":I
    .restart local v10    # "offsetDelta":I
    :cond_2
    iget v2, v11, Ljavassist/bytecode/stackmap/TypedBlock;->length:I

    add-int/2addr v10, v2

    .line 419
    .end local v11    # "bb":Ljavassist/bytecode/stackmap/TypedBlock;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 438
    .end local v8    # "i":I
    :cond_3
    iget-object v2, p0, Ljavassist/bytecode/stackmap/MapMaker;->cpool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, v2}, Ljavassist/bytecode/StackMapTable$Writer;->toStackMapTable(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/StackMapTable;

    move-result-object v2

    return-object v2
.end method

.method public toStackMap2(Ljavassist/bytecode/ConstPool;[Ljavassist/bytecode/stackmap/TypedBlock;)Ljavassist/bytecode/StackMap;
    .locals 8
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "blocks"    # [Ljavassist/bytecode/stackmap/TypedBlock;

    .line 559
    new-instance v0, Ljavassist/bytecode/StackMap$Writer;

    invoke-direct {v0}, Ljavassist/bytecode/StackMap$Writer;-><init>()V

    .line 560
    .local v0, "writer":Ljavassist/bytecode/StackMap$Writer;
    array-length v1, p2

    .line 561
    .local v1, "n":I
    new-array v2, v1, [Z

    .line 562
    .local v2, "effective":[Z
    const/4 v3, 0x0

    aget-object v4, p2, v3

    .line 565
    .local v4, "prev":Ljavassist/bytecode/stackmap/TypedBlock;
    iget v5, v4, Ljavassist/bytecode/stackmap/TypedBlock;->incoming:I

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    aput-boolean v5, v2, v3

    .line 567
    aget-boolean v3, v2, v3

    .line 568
    .local v3, "num":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 569
    aget-object v6, p2, v5

    .line 570
    .local v6, "bb":Ljavassist/bytecode/stackmap/TypedBlock;
    add-int/lit8 v7, v5, -0x1

    aget-object v7, p2, v7

    invoke-direct {p0, v6, v7}, Ljavassist/bytecode/stackmap/MapMaker;->isTarget(Ljavassist/bytecode/stackmap/TypedBlock;Ljavassist/bytecode/stackmap/TypedBlock;)Z

    move-result v7

    aput-boolean v7, v2, v5

    if-eqz v7, :cond_1

    .line 571
    invoke-virtual {v6}, Ljavassist/bytecode/stackmap/TypedBlock;->resetNumLocals()V

    .line 572
    move-object v4, v6

    .line 573
    add-int/lit8 v3, v3, 0x1

    .line 568
    .end local v6    # "bb":Ljavassist/bytecode/stackmap/TypedBlock;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 577
    .end local v5    # "i":I
    :cond_2
    if-nez v3, :cond_3

    .line 578
    const/4 v5, 0x0

    return-object v5

    .line 580
    :cond_3
    invoke-virtual {v0, v3}, Ljavassist/bytecode/StackMap$Writer;->write16bit(I)V

    .line 581
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v1, :cond_5

    .line 582
    aget-boolean v6, v2, v5

    if-eqz v6, :cond_4

    .line 583
    aget-object v6, p2, v5

    iget v6, v6, Ljavassist/bytecode/stackmap/TypedBlock;->position:I

    aget-object v7, p2, v5

    invoke-direct {p0, v0, p1, v6, v7}, Ljavassist/bytecode/stackmap/MapMaker;->writeStackFrame(Ljavassist/bytecode/StackMap$Writer;Ljavassist/bytecode/ConstPool;ILjavassist/bytecode/stackmap/TypedBlock;)V

    .line 581
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 585
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v0, p1}, Ljavassist/bytecode/StackMap$Writer;->toStackMap(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/StackMap;

    move-result-object v5

    return-object v5
.end method
