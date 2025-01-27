.class public Ljavassist/bytecode/stackmap/BasicBlock$Maker;
.super Ljava/lang/Object;
.source "BasicBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/stackmap/BasicBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Maker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addCatchers([Ljavassist/bytecode/stackmap/BasicBlock;Ljavassist/bytecode/ExceptionTable;)V
    .locals 10
    .param p1, "blocks"    # [Ljavassist/bytecode/stackmap/BasicBlock;
    .param p2, "et"    # Ljavassist/bytecode/ExceptionTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 397
    if-nez p2, :cond_0

    .line 398
    return-void

    .line 400
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v0

    .line 401
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 402
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v1

    invoke-static {p1, v1}, Ljavassist/bytecode/stackmap/BasicBlock;->find([Ljavassist/bytecode/stackmap/BasicBlock;I)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v1

    .line 403
    .local v1, "handler":Ljavassist/bytecode/stackmap/BasicBlock;
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ExceptionTable;->startPc(I)I

    move-result v2

    .line 404
    .local v2, "start":I
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ExceptionTable;->endPc(I)I

    move-result v3

    .line 405
    .local v3, "end":I
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ExceptionTable;->catchType(I)I

    move-result v4

    .line 406
    .local v4, "type":I
    iget v5, v1, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    .line 407
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_2

    .line 408
    aget-object v6, p1, v5

    .line 409
    .local v6, "bb":Ljavassist/bytecode/stackmap/BasicBlock;
    iget v7, v6, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    .line 410
    .local v7, "iPos":I
    if-gt v2, v7, :cond_1

    if-ge v7, v3, :cond_1

    .line 411
    new-instance v8, Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    iget-object v9, v6, Ljavassist/bytecode/stackmap/BasicBlock;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    invoke-direct {v8, v1, v4, v9}, Ljavassist/bytecode/stackmap/BasicBlock$Catch;-><init>(Ljavassist/bytecode/stackmap/BasicBlock;ILjavassist/bytecode/stackmap/BasicBlock$Catch;)V

    iput-object v8, v6, Ljavassist/bytecode/stackmap/BasicBlock;->toCatch:Ljavassist/bytecode/stackmap/BasicBlock$Catch;

    .line 412
    iget v8, v1, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    .line 407
    .end local v6    # "bb":Ljavassist/bytecode/stackmap/BasicBlock;
    .end local v7    # "iPos":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 415
    .end local v1    # "handler":Ljavassist/bytecode/stackmap/BasicBlock;
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "type":I
    .end local v5    # "k":I
    :cond_2
    goto :goto_0

    .line 416
    :cond_3
    return-void
.end method

.method private static getBBlock(Ljavassist/bytecode/stackmap/BasicBlock$Mark;)Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 2
    .param p0, "m"    # Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 384
    iget-object v0, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    .line 385
    .local v0, "b":Ljavassist/bytecode/stackmap/BasicBlock;
    if-eqz v0, :cond_0

    iget v1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->size:I

    if-lez v1, :cond_0

    .line 386
    iget-object v1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->jump:[Ljavassist/bytecode/stackmap/BasicBlock;

    iput-object v1, v0, Ljavassist/bytecode/stackmap/BasicBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    .line 387
    iget v1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->size:I

    iput v1, v0, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    .line 388
    iget-boolean v1, p0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->alwaysJmp:Z

    iput-boolean v1, v0, Ljavassist/bytecode/stackmap/BasicBlock;->stop:Z

    .line 391
    :cond_0
    return-object v0
.end method

.method private makeArray(Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 2
    .param p1, "b"    # Ljavassist/bytecode/stackmap/BasicBlock;

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v0

    .line 159
    .local v0, "array":[Ljavassist/bytecode/stackmap/BasicBlock;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 160
    return-object v0
.end method

.method private makeArray(Ljavassist/bytecode/stackmap/BasicBlock;Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 2
    .param p1, "b1"    # Ljavassist/bytecode/stackmap/BasicBlock;
    .param p2, "b2"    # Ljavassist/bytecode/stackmap/BasicBlock;

    .line 164
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v0

    .line 165
    .local v0, "array":[Ljavassist/bytecode/stackmap/BasicBlock;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 166
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 167
    return-object v0
.end method

.method private makeBlocks(Ljava/util/Map;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavassist/bytecode/stackmap/BasicBlock$Mark;",
            ">;)[",
            "Ljavassist/bytecode/stackmap/BasicBlock;"
        }
    .end annotation

    .line 328
    .local p1, "markTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavassist/bytecode/stackmap/BasicBlock$Mark;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 329
    .local v0, "marks":[Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v1, "blocks":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/stackmap/BasicBlock;>;"
    const/4 v2, 0x0

    .line 333
    .local v2, "i":I
    array-length v3, v0

    const/4 v4, 0x0

    if-lez v3, :cond_0

    aget-object v3, v0, v4

    iget v3, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    if-nez v3, :cond_0

    aget-object v3, v0, v4

    iget-object v3, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    if-eqz v3, :cond_0

    .line 334
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-object v2, v0, v2

    invoke-static {v2}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->getBBlock(Ljavassist/bytecode/stackmap/BasicBlock$Mark;)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v2

    .local v2, "prev":Ljavassist/bytecode/stackmap/BasicBlock;
    goto :goto_0

    .line 336
    .end local v3    # "i":I
    .local v2, "i":I
    :cond_0
    invoke-virtual {p0, v4}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v3

    move-object v9, v3

    move v3, v2

    move-object v2, v9

    .line 338
    .local v2, "prev":Ljavassist/bytecode/stackmap/BasicBlock;
    .restart local v3    # "i":I
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 340
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-object v3, v0, v3

    .line 341
    .local v3, "m":Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    invoke-static {v3}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->getBBlock(Ljavassist/bytecode/stackmap/BasicBlock$Mark;)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v5

    .line 342
    .local v5, "bb":Ljavassist/bytecode/stackmap/BasicBlock;
    if-nez v5, :cond_2

    .line 344
    iget v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    if-lez v6, :cond_1

    .line 346
    iget v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    iget v7, v2, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v2

    .line 347
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_1
    iget v6, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    iget v7, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->size:I

    add-int/2addr v6, v7

    iget v7, v2, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    sub-int/2addr v6, v7

    iput v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    .line 351
    iget-object v6, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->jump:[Ljavassist/bytecode/stackmap/BasicBlock;

    iput-object v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    .line 352
    iget-boolean v6, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->alwaysJmp:Z

    iput-boolean v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->stop:Z

    goto :goto_3

    .line 356
    :cond_2
    iget v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    const/4 v7, 0x1

    if-nez v6, :cond_3

    .line 357
    iget v6, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    iget v8, v2, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    sub-int/2addr v6, v8

    iput v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    .line 358
    iget v6, v5, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    add-int/2addr v6, v7

    iput v6, v5, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    .line 359
    invoke-direct {p0, v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v6

    iput-object v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    goto :goto_2

    .line 363
    :cond_3
    iget v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    iget v8, v2, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    add-int/2addr v6, v8

    iget v8, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    if-ge v6, v8, :cond_4

    .line 365
    iget v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    iget v8, v2, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    add-int/2addr v6, v8

    invoke-virtual {p0, v6}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v2

    .line 366
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget v6, v3, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->position:I

    iget v8, v2, Ljavassist/bytecode/stackmap/BasicBlock;->position:I

    sub-int/2addr v6, v8

    iput v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->length:I

    .line 370
    iput-boolean v7, v2, Ljavassist/bytecode/stackmap/BasicBlock;->stop:Z

    .line 371
    invoke-direct {p0, v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v6

    iput-object v6, v2, Ljavassist/bytecode/stackmap/BasicBlock;->exit:[Ljavassist/bytecode/stackmap/BasicBlock;

    .line 375
    :cond_4
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    move-object v2, v5

    .line 378
    .end local v3    # "m":Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    .end local v5    # "bb":Ljavassist/bytecode/stackmap/BasicBlock;
    :goto_3
    move v3, v4

    goto :goto_1

    .line 380
    .end local v4    # "i":I
    .local v3, "i":I
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljavassist/bytecode/stackmap/BasicBlock;

    return-object v4
.end method

.method private makeGoto(Ljava/util/Map;III)V
    .locals 8
    .param p2, "pos"    # I
    .param p3, "target"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavassist/bytecode/stackmap/BasicBlock$Mark;",
            ">;III)V"
        }
    .end annotation

    .line 308
    .local p1, "marks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavassist/bytecode/stackmap/BasicBlock$Mark;>;"
    invoke-direct {p0, p1, p3}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v0

    .line 309
    .local v0, "to":Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    iget-object v1, v0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    invoke-direct {p0, v1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v1

    .line 310
    .local v1, "jumps":[Ljavassist/bytecode/stackmap/BasicBlock;
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, v1

    move v6, p4

    invoke-direct/range {v2 .. v7}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 311
    return-void
.end method

.method private makeMark(Ljava/util/Map;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    .locals 1
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavassist/bytecode/stackmap/BasicBlock$Mark;",
            ">;I)",
            "Ljavassist/bytecode/stackmap/BasicBlock$Mark;"
        }
    .end annotation

    .line 192
    .local p1, "table":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavassist/bytecode/stackmap/BasicBlock$Mark;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark0(Ljava/util/Map;IZZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v0

    return-object v0
.end method

.method private makeMark(Ljava/util/Map;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    .locals 1
    .param p2, "pos"    # I
    .param p3, "jump"    # [Ljavassist/bytecode/stackmap/BasicBlock;
    .param p4, "size"    # I
    .param p5, "always"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavassist/bytecode/stackmap/BasicBlock$Mark;",
            ">;I[",
            "Ljavassist/bytecode/stackmap/BasicBlock;",
            "IZ)",
            "Ljavassist/bytecode/stackmap/BasicBlock$Mark;"
        }
    .end annotation

    .line 200
    .local p1, "table":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavassist/bytecode/stackmap/BasicBlock$Mark;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark0(Ljava/util/Map;IZZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v0

    .line 201
    .local v0, "m":Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    invoke-virtual {v0, p3, p4, p5}, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->setJump([Ljavassist/bytecode/stackmap/BasicBlock;IZ)V

    .line 202
    return-object v0
.end method

.method private makeMark0(Ljava/util/Map;IZZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    .locals 4
    .param p2, "pos"    # I
    .param p3, "isBlockBegin"    # Z
    .param p4, "isTarget"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavassist/bytecode/stackmap/BasicBlock$Mark;",
            ">;IZZ)",
            "Ljavassist/bytecode/stackmap/BasicBlock$Mark;"
        }
    .end annotation

    .line 207
    .local p1, "table":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavassist/bytecode/stackmap/BasicBlock$Mark;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 208
    .local v0, "p":Ljava/lang/Integer;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 209
    .local v1, "m":Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    if-nez v1, :cond_0

    .line 210
    new-instance v2, Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    invoke-direct {v2, p2}, Ljavassist/bytecode/stackmap/BasicBlock$Mark;-><init>(I)V

    move-object v1, v2

    .line 211
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    if-eqz p3, :cond_2

    .line 215
    iget-object v2, v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    if-nez v2, :cond_1

    .line 216
    invoke-virtual {p0, p2}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v2

    iput-object v2, v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    .line 218
    :cond_1
    if-eqz p4, :cond_2

    .line 219
    iget-object v2, v1, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    iget v3, v2, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavassist/bytecode/stackmap/BasicBlock;->incoming:I

    .line 222
    :cond_2
    return-object v1
.end method

.method private makeMarks(Ljavassist/bytecode/CodeIterator;IILjavassist/bytecode/ExceptionTable;)Ljava/util/Map;
    .locals 22
    .param p1, "ci"    # Ljavassist/bytecode/CodeIterator;
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .param p4, "et"    # Ljavassist/bytecode/ExceptionTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/CodeIterator;",
            "II",
            "Ljavassist/bytecode/ExceptionTable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavassist/bytecode/stackmap/BasicBlock$Mark;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 229
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Ljavassist/bytecode/CodeIterator;->begin()V

    .line 230
    invoke-virtual/range {p1 .. p2}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 232
    .local v9, "marks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavassist/bytecode/stackmap/BasicBlock$Mark;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 233
    invoke-virtual/range {p1 .. p1}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v10

    .line 234
    .local v10, "index":I
    move/from16 v11, p3

    if-lt v10, v11, :cond_0

    .line 235
    goto/16 :goto_6

    .line 237
    :cond_0
    invoke-virtual {v7, v10}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v12

    .line 238
    .local v12, "op":I
    const/16 v0, 0x99

    if-gt v0, v12, :cond_1

    const/16 v0, 0xa6

    if-le v12, v0, :cond_b

    :cond_1
    const/16 v0, 0xc6

    if-eq v12, v0, :cond_b

    const/16 v0, 0xc7

    if-ne v12, v0, :cond_2

    goto/16 :goto_4

    .line 244
    :cond_2
    const/16 v0, 0xa7

    if-gt v0, v12, :cond_5

    const/16 v0, 0xab

    if-gt v12, v0, :cond_5

    .line 245
    const/4 v0, 0x3

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_3

    .line 272
    :pswitch_0
    and-int/lit8 v0, v10, -0x4

    add-int/lit8 v13, v0, 0x4

    .line 273
    .local v13, "pos":I
    add-int/lit8 v0, v13, 0x4

    invoke-virtual {v7, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v14

    .line 274
    .local v14, "ncases":I
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v6, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v15

    .line 275
    .local v15, "to":[Ljavassist/bytecode/stackmap/BasicBlock;
    invoke-virtual {v7, v13}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-direct {v6, v9, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v0

    iget-object v0, v0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    aput-object v0, v15, v1

    .line 276
    add-int/lit8 v0, v13, 0x8

    add-int/lit8 v0, v0, 0x4

    .line 277
    .local v0, "p":I
    mul-int/lit8 v1, v14, 0x8

    add-int/2addr v1, v0

    add-int/lit8 v5, v1, -0x4

    .line 278
    .local v5, "n":I
    const/4 v1, 0x1

    move v4, v0

    move/from16 v16, v1

    .line 279
    .end local v0    # "p":I
    .local v4, "p":I
    .local v16, "k":I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 280
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "k":I
    .local v1, "k":I
    invoke-virtual {v7, v4}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-direct {v6, v9, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v0

    iget-object v0, v0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    aput-object v0, v15, v16

    .line 281
    add-int/lit8 v4, v4, 0x8

    move/from16 v16, v1

    goto :goto_1

    .line 283
    .end local v1    # "k":I
    .restart local v16    # "k":I
    :cond_3
    sub-int v17, v5, v10

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    move-object v3, v15

    move/from16 v19, v4

    .end local v4    # "p":I
    .local v19, "p":I
    move/from16 v4, v17

    move/from16 v17, v5

    .end local v5    # "n":I
    .local v17, "n":I
    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 284
    goto/16 :goto_3

    .line 256
    .end local v13    # "pos":I
    .end local v14    # "ncases":I
    .end local v15    # "to":[Ljavassist/bytecode/stackmap/BasicBlock;
    .end local v16    # "k":I
    .end local v17    # "n":I
    .end local v19    # "p":I
    :pswitch_1
    and-int/lit8 v0, v10, -0x4

    add-int/lit8 v13, v0, 0x4

    .line 257
    .restart local v13    # "pos":I
    add-int/lit8 v0, v13, 0x4

    invoke-virtual {v7, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v14

    .line 258
    .local v14, "low":I
    add-int/lit8 v0, v13, 0x8

    invoke-virtual {v7, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v15

    .line 259
    .local v15, "high":I
    sub-int v0, v15, v14

    add-int/lit8 v16, v0, 0x1

    .line 260
    .local v16, "ncases":I
    add-int/lit8 v0, v16, 0x1

    invoke-virtual {v6, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v17

    .line 261
    .local v17, "to":[Ljavassist/bytecode/stackmap/BasicBlock;
    invoke-virtual {v7, v13}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-direct {v6, v9, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v0

    iget-object v0, v0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    aput-object v0, v17, v1

    .line 262
    add-int/lit8 v0, v13, 0xc

    .line 263
    .restart local v0    # "p":I
    mul-int/lit8 v1, v16, 0x4

    add-int v5, v0, v1

    .line 264
    .restart local v5    # "n":I
    const/4 v1, 0x1

    move v4, v0

    move/from16 v18, v1

    .line 265
    .end local v0    # "p":I
    .restart local v4    # "p":I
    .local v18, "k":I
    :goto_2
    if-ge v4, v5, :cond_4

    .line 266
    add-int/lit8 v1, v18, 0x1

    .end local v18    # "k":I
    .restart local v1    # "k":I
    invoke-virtual {v7, v4}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-direct {v6, v9, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v0

    iget-object v0, v0, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    aput-object v0, v17, v18

    .line 267
    add-int/lit8 v4, v4, 0x4

    move/from16 v18, v1

    goto :goto_2

    .line 269
    .end local v1    # "k":I
    .restart local v18    # "k":I
    :cond_4
    sub-int v19, v5, v10

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    move-object/from16 v3, v17

    move/from16 v21, v4

    .end local v4    # "p":I
    .local v21, "p":I
    move/from16 v4, v19

    move/from16 v19, v5

    .end local v5    # "n":I
    .local v19, "n":I
    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 270
    goto :goto_3

    .line 253
    .end local v13    # "pos":I
    .end local v14    # "low":I
    .end local v15    # "high":I
    .end local v16    # "ncases":I
    .end local v17    # "to":[Ljavassist/bytecode/stackmap/BasicBlock;
    .end local v18    # "k":I
    .end local v19    # "n":I
    .end local v21    # "p":I
    :pswitch_2
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 254
    goto :goto_3

    .line 250
    :pswitch_3
    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v7, v1}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v6, v9, v10, v1, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeJsr(Ljava/util/Map;III)V

    .line 251
    goto :goto_3

    .line 247
    :pswitch_4
    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v7, v1}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v6, v9, v10, v1, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeGoto(Ljava/util/Map;III)V

    .line 248
    nop

    .line 284
    :goto_3
    goto/16 :goto_5

    .line 286
    :cond_5
    const/16 v0, 0xac

    if-gt v0, v12, :cond_6

    const/16 v0, 0xb1

    if-le v12, v0, :cond_7

    :cond_6
    const/16 v0, 0xbf

    if-ne v12, v0, :cond_8

    .line 287
    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    goto :goto_5

    .line 288
    :cond_8
    const/16 v0, 0xc8

    const/4 v1, 0x5

    if-ne v12, v0, :cond_9

    .line 289
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v7, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-direct {v6, v9, v10, v0, v1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeGoto(Ljava/util/Map;III)V

    goto :goto_5

    .line 290
    :cond_9
    const/16 v0, 0xc9

    if-ne v12, v0, :cond_a

    .line 291
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v7, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v6, v9, v10, v0, v1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeJsr(Ljava/util/Map;III)V

    goto :goto_5

    .line 292
    :cond_a
    const/16 v0, 0xc4

    if-ne v12, v0, :cond_c

    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v7, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_c

    .line 293
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    goto :goto_5

    .line 240
    :cond_b
    :goto_4
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v7, v0}, Ljavassist/bytecode/CodeIterator;->s16bitAt(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-direct {v6, v9, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v13

    .line 241
    .local v13, "to":Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    add-int/lit8 v0, v10, 0x3

    invoke-direct {v6, v9, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    move-result-object v14

    .line 242
    .local v14, "next":Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    iget-object v0, v13, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    iget-object v1, v14, Ljavassist/bytecode/stackmap/BasicBlock$Mark;->block:Ljavassist/bytecode/stackmap/BasicBlock;

    invoke-direct {v6, v0, v1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeArray(Ljavassist/bytecode/stackmap/BasicBlock;Ljavassist/bytecode/stackmap/BasicBlock;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I[Ljavassist/bytecode/stackmap/BasicBlock;IZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 243
    .end local v13    # "to":Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    .end local v14    # "next":Ljavassist/bytecode/stackmap/BasicBlock$Mark;
    nop

    .line 294
    .end local v10    # "index":I
    .end local v12    # "op":I
    :cond_c
    :goto_5
    goto/16 :goto_0

    .line 232
    :cond_d
    move/from16 v11, p3

    .line 296
    :goto_6
    if-eqz v8, :cond_e

    .line 297
    invoke-virtual/range {p4 .. p4}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v0

    .line 298
    .local v0, "i":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_e

    .line 299
    invoke-virtual {v8, v0}, Ljavassist/bytecode/ExceptionTable;->startPc(I)I

    move-result v3

    invoke-direct {v6, v9, v3, v2, v1}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark0(Ljava/util/Map;IZZ)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    .line 300
    invoke-virtual {v8, v0}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v3

    invoke-direct {v6, v9, v3}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMark(Ljava/util/Map;I)Ljavassist/bytecode/stackmap/BasicBlock$Mark;

    goto :goto_7

    .line 304
    .end local v0    # "i":I
    :cond_e
    return-object v9

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public make(Ljavassist/bytecode/CodeIterator;IILjavassist/bytecode/ExceptionTable;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 2
    .param p1, "ci"    # Ljavassist/bytecode/CodeIterator;
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .param p4, "et"    # Ljavassist/bytecode/ExceptionTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeMarks(Ljavassist/bytecode/CodeIterator;IILjavassist/bytecode/ExceptionTable;)Ljava/util/Map;

    move-result-object v0

    .line 184
    .local v0, "marks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavassist/bytecode/stackmap/BasicBlock$Mark;>;"
    invoke-direct {p0, v0}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->makeBlocks(Ljava/util/Map;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v1

    .line 185
    .local v1, "bb":[Ljavassist/bytecode/stackmap/BasicBlock;
    invoke-direct {p0, v1, p4}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->addCatchers([Ljavassist/bytecode/stackmap/BasicBlock;Ljavassist/bytecode/ExceptionTable;)V

    .line 186
    return-object v1
.end method

.method public make(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 5
    .param p1, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 172
    .local v0, "ca":Ljavassist/bytecode/CodeAttribute;
    if-nez v0, :cond_0

    .line 173
    const/4 v1, 0x0

    return-object v1

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v1

    .line 176
    .local v1, "ci":Ljavassist/bytecode/CodeIterator;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v3

    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Ljavassist/bytecode/stackmap/BasicBlock$Maker;->make(Ljavassist/bytecode/CodeIterator;IILjavassist/bytecode/ExceptionTable;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v2

    return-object v2
.end method

.method protected makeArray(I)[Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 1
    .param p1, "size"    # I

    .line 154
    new-array v0, p1, [Ljavassist/bytecode/stackmap/BasicBlock;

    return-object v0
.end method

.method protected makeBlock(I)Ljavassist/bytecode/stackmap/BasicBlock;
    .locals 1
    .param p1, "pos"    # I

    .line 150
    new-instance v0, Ljavassist/bytecode/stackmap/BasicBlock;

    invoke-direct {v0, p1}, Ljavassist/bytecode/stackmap/BasicBlock;-><init>(I)V

    return-object v0
.end method

.method protected makeJsr(Ljava/util/Map;III)V
    .locals 1
    .param p2, "pos"    # I
    .param p3, "target"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavassist/bytecode/stackmap/BasicBlock$Mark;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 324
    .local p1, "marks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavassist/bytecode/stackmap/BasicBlock$Mark;>;"
    new-instance v0, Ljavassist/bytecode/stackmap/BasicBlock$JsrBytecode;

    invoke-direct {v0}, Ljavassist/bytecode/stackmap/BasicBlock$JsrBytecode;-><init>()V

    throw v0
.end method
