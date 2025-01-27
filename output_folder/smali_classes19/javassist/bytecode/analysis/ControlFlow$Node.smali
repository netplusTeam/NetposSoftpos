.class public Ljavassist/bytecode/analysis/ControlFlow$Node;
.super Ljava/lang/Object;
.source "ControlFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/analysis/ControlFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field private block:Ljavassist/bytecode/analysis/ControlFlow$Block;

.field private children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

.field private parent:Ljavassist/bytecode/analysis/ControlFlow$Node;


# direct methods
.method constructor <init>(Ljavassist/bytecode/analysis/ControlFlow$Block;)V
    .locals 1
    .param p1, "b"    # Ljavassist/bytecode/analysis/ControlFlow$Block;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 356
    return-void
.end method

.method static synthetic access$200(Ljavassist/bytecode/analysis/ControlFlow$Node;)Ljavassist/bytecode/analysis/ControlFlow$Block;
    .locals 1
    .param p0, "x0"    # Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 348
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object v0
.end method

.method static synthetic access$300([Ljavassist/bytecode/analysis/ControlFlow$Node;)V
    .locals 0
    .param p0, "x0"    # [Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 348
    invoke-static {p0}, Ljavassist/bytecode/analysis/ControlFlow$Node;->setChildren([Ljavassist/bytecode/analysis/ControlFlow$Node;)V

    return-void
.end method

.method private static getAncestor(Ljavassist/bytecode/analysis/ControlFlow$Node;Ljavassist/bytecode/analysis/ControlFlow$Node;[I)Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 2
    .param p0, "n1"    # Ljavassist/bytecode/analysis/ControlFlow$Node;
    .param p1, "n2"    # Ljavassist/bytecode/analysis/ControlFlow$Node;
    .param p2, "distance"    # [I

    .line 451
    :cond_0
    if-eq p0, p1, :cond_3

    .line 452
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v0, v0, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v0, p2, v0

    iget-object v1, p1, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v1, v1, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v1, p2, v1

    if-ge v0, v1, :cond_1

    .line 453
    iget-object p0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    goto :goto_0

    .line 455
    :cond_1
    iget-object p1, p1, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 457
    :goto_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    .line 458
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 461
    :cond_3
    return-object p0
.end method

.method private static setChildren([Ljavassist/bytecode/analysis/ControlFlow$Node;)V
    .locals 9
    .param p0, "all"    # [Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 465
    array-length v0, p0

    .line 466
    .local v0, "size":I
    new-array v1, v0, [I

    .line 467
    .local v1, "nchildren":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 468
    aput v3, v1, v2

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 471
    aget-object v4, p0, v2

    iget-object v4, v4, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 472
    .local v4, "p":Ljavassist/bytecode/analysis/ControlFlow$Node;
    if-eqz v4, :cond_1

    .line 473
    iget-object v5, v4, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v5, v5, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v6, v1, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v1, v5

    .line 470
    .end local v4    # "p":Ljavassist/bytecode/analysis/ControlFlow$Node;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 476
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 477
    aget-object v4, p0, v2

    aget v5, v1, v2

    new-array v5, v5, [Ljavassist/bytecode/analysis/ControlFlow$Node;

    iput-object v5, v4, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 476
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 479
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_4

    .line 480
    aput v3, v1, v2

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 482
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_6

    .line 483
    aget-object v3, p0, v2

    .line 484
    .local v3, "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    iget-object v4, v3, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 485
    .restart local v4    # "p":Ljavassist/bytecode/analysis/ControlFlow$Node;
    if-eqz v4, :cond_5

    .line 486
    iget-object v5, v4, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    iget-object v6, v4, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v6, v6, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    aget v7, v1, v6

    add-int/lit8 v8, v7, 0x1

    aput v8, v1, v6

    aput-object v3, v5, v7

    .line 482
    .end local v3    # "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    .end local v4    # "p":Ljavassist/bytecode/analysis/ControlFlow$Node;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 488
    .end local v2    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public block()Ljavassist/bytecode/analysis/ControlFlow$Block;
    .locals 1

    .line 378
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    return-object v0
.end method

.method public child(I)Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 1
    .param p1, "n"    # I

    .line 395
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public children()I
    .locals 1

    .line 388
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    array-length v0, v0

    return v0
.end method

.method makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I
    .locals 10
    .param p1, "caller"    # Ljavassist/bytecode/analysis/ControlFlow$Node;
    .param p2, "visited"    # [Z
    .param p3, "counter"    # I
    .param p4, "distance"    # [I
    .param p5, "access"    # Ljavassist/bytecode/analysis/ControlFlow$Access;

    .line 403
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v0, v0, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    .line 404
    .local v0, "index":I
    aget-boolean v1, p2, v0

    if-eqz v1, :cond_0

    .line 405
    return p3

    .line 407
    :cond_0
    const/4 v1, 0x1

    aput-boolean v1, p2, v0

    .line 408
    iput-object p1, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 409
    invoke-virtual {p5, p0}, Ljavassist/bytecode/analysis/ControlFlow$Access;->exits(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v1

    .line 410
    .local v1, "exits":[Ljavassist/bytecode/stackmap/BasicBlock;
    if-eqz v1, :cond_1

    .line 411
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 412
    aget-object v3, v1, v2

    invoke-virtual {p5, v3}, Ljavassist/bytecode/analysis/ControlFlow$Access;->node(Ljavassist/bytecode/stackmap/BasicBlock;)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v9

    .line 413
    .local v9, "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    move-object v3, v9

    move-object v4, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDepth1stTree(Ljavassist/bytecode/analysis/ControlFlow$Node;[ZI[ILjavassist/bytecode/analysis/ControlFlow$Access;)I

    move-result p3

    .line 411
    .end local v9    # "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    .end local v2    # "i":I
    :cond_1
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "counter":I
    .local v2, "counter":I
    aput p3, p4, v0

    .line 417
    return v2
.end method

.method makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z
    .locals 7
    .param p1, "visited"    # [Z
    .param p2, "distance"    # [I
    .param p3, "access"    # Ljavassist/bytecode/analysis/ControlFlow$Access;

    .line 421
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->block:Ljavassist/bytecode/analysis/ControlFlow$Block;

    iget v0, v0, Ljavassist/bytecode/analysis/ControlFlow$Block;->index:I

    .line 422
    .local v0, "index":I
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    .line 423
    const/4 v1, 0x0

    return v1

    .line 425
    :cond_0
    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "changed":Z
    invoke-virtual {p3, p0}, Ljavassist/bytecode/analysis/ControlFlow$Access;->exits(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v2

    .line 428
    .local v2, "exits":[Ljavassist/bytecode/stackmap/BasicBlock;
    if-eqz v2, :cond_2

    .line 429
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 430
    aget-object v4, v2, v3

    invoke-virtual {p3, v4}, Ljavassist/bytecode/analysis/ControlFlow$Access;->node(Ljavassist/bytecode/stackmap/BasicBlock;)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v4

    .line 431
    .local v4, "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    invoke-virtual {v4, p1, p2, p3}, Ljavassist/bytecode/analysis/ControlFlow$Node;->makeDominatorTree([Z[ILjavassist/bytecode/analysis/ControlFlow$Access;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 432
    const/4 v1, 0x1

    .line 429
    .end local v4    # "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 435
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p3, p0}, Ljavassist/bytecode/analysis/ControlFlow$Access;->entrances(Ljavassist/bytecode/analysis/ControlFlow$Node;)[Ljavassist/bytecode/stackmap/BasicBlock;

    move-result-object v3

    .line 436
    .local v3, "entrances":[Ljavassist/bytecode/stackmap/BasicBlock;
    if-eqz v3, :cond_4

    .line 437
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 438
    iget-object v5, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    if-eqz v5, :cond_3

    .line 439
    aget-object v6, v3, v4

    invoke-virtual {p3, v6}, Ljavassist/bytecode/analysis/ControlFlow$Access;->node(Ljavassist/bytecode/stackmap/BasicBlock;)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v6

    invoke-static {v5, v6, p2}, Ljavassist/bytecode/analysis/ControlFlow$Node;->getAncestor(Ljavassist/bytecode/analysis/ControlFlow$Node;Ljavassist/bytecode/analysis/ControlFlow$Node;[I)Ljavassist/bytecode/analysis/ControlFlow$Node;

    move-result-object v5

    .line 440
    .local v5, "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    iget-object v6, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    if-eq v5, v6, :cond_3

    .line 441
    iput-object v5, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    .line 442
    const/4 v1, 0x1

    .line 437
    .end local v5    # "n":Ljavassist/bytecode/analysis/ControlFlow$Node;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 447
    .end local v4    # "i":I
    :cond_4
    return v1
.end method

.method public parent()Ljavassist/bytecode/analysis/ControlFlow$Node;
    .locals 1

    .line 383
    iget-object v0, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 363
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 364
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "Node[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/bytecode/analysis/ControlFlow$Node;->block()Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Block;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 365
    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    iget-object v1, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->parent:Ljavassist/bytecode/analysis/ControlFlow$Node;

    if-nez v1, :cond_0

    const-string v1, "*"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljavassist/bytecode/analysis/ControlFlow$Node;->block()Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/analysis/ControlFlow$Block;->position()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v1, ", children{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Ljavassist/bytecode/analysis/ControlFlow$Node;->children:[Ljavassist/bytecode/analysis/ControlFlow$Node;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 369
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Node;->block()Ljavassist/bytecode/analysis/ControlFlow$Block;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/ControlFlow$Block;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 371
    .end local v1    # "i":I
    :cond_1
    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
