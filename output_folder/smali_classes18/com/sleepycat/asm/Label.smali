.class public Lcom/sleepycat/asm/Label;
.super Ljava/lang/Object;
.source "Label.java"


# static fields
.field static final DEBUG:I = 0x1

.field static final JSR:I = 0x80

.field static final PUSHED:I = 0x8

.field static final REACHABLE:I = 0x40

.field static final RESIZED:I = 0x4

.field static final RESOLVED:I = 0x2

.field static final RET:I = 0x100

.field static final STORE:I = 0x20

.field static final SUBROUTINE:I = 0x200

.field static final TARGET:I = 0x10

.field static final VISITED:I = 0x400

.field static final VISITED2:I = 0x800


# instance fields
.field frame:Lcom/sleepycat/asm/Frame;

.field public info:Ljava/lang/Object;

.field inputStackTop:I

.field line:I

.field next:Lcom/sleepycat/asm/Label;

.field outputStackMax:I

.field position:I

.field private referenceCount:I

.field private srcAndRefPositions:[I

.field status:I

.field successor:Lcom/sleepycat/asm/Label;

.field successors:Lcom/sleepycat/asm/Edge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    return-void
.end method

.method private addReference(II)V
    .locals 4
    .param p1, "sourcePosition"    # I
    .param p2, "referencePosition"    # I

    .line 338
    iget-object v0, p0, Lcom/sleepycat/asm/Label;->srcAndRefPositions:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 339
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sleepycat/asm/Label;->srcAndRefPositions:[I

    .line 341
    :cond_0
    iget v0, p0, Lcom/sleepycat/asm/Label;->referenceCount:I

    iget-object v2, p0, Lcom/sleepycat/asm/Label;->srcAndRefPositions:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 342
    array-length v0, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 343
    .local v0, "a":[I
    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iput-object v0, p0, Lcom/sleepycat/asm/Label;->srcAndRefPositions:[I

    .line 347
    .end local v0    # "a":[I
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/asm/Label;->srcAndRefPositions:[I

    iget v1, p0, Lcom/sleepycat/asm/Label;->referenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sleepycat/asm/Label;->referenceCount:I

    aput p1, v0, v1

    .line 348
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/sleepycat/asm/Label;->referenceCount:I

    aput p2, v0, v2

    .line 349
    return-void
.end method


# virtual methods
.method addToSubroutine(JI)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "nbSubroutines"    # I

    .line 478
    iget v0, p0, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    .line 479
    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/sleepycat/asm/Label;->status:I

    .line 480
    div-int/lit8 v0, p3, 0x20

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/asm/Label;->srcAndRefPositions:[I

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/Label;->srcAndRefPositions:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aget v2, v0, v1

    long-to-int v3, p1

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 483
    return-void
.end method

.method getFirst()Lcom/sleepycat/asm/Label;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/sleepycat/asm/Label;->frame:Lcom/sleepycat/asm/Frame;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/sleepycat/asm/Frame;->owner:Lcom/sleepycat/asm/Label;

    :goto_0
    return-object v0
.end method

.method public getOffset()I
    .locals 2

    .line 278
    iget v0, p0, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 282
    iget v0, p0, Lcom/sleepycat/asm/Label;->position:I

    return v0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label offset position has not been resolved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method inSameSubroutine(Lcom/sleepycat/asm/Label;)Z
    .locals 4
    .param p1, "block"    # Lcom/sleepycat/asm/Label;

    .line 458
    iget v0, p0, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    goto :goto_1

    .line 461
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/asm/Label;->srcAndRefPositions:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 462
    aget v2, v2, v0

    iget-object v3, p1, Lcom/sleepycat/asm/Label;->srcAndRefPositions:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 463
    const/4 v1, 0x1

    return v1

    .line 461
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "i":I
    :cond_2
    return v1

    .line 459
    :cond_3
    :goto_1
    return v1
.end method

.method inSubroutine(J)Z
    .locals 4
    .param p1, "id"    # J

    .line 442
    iget v0, p0, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/sleepycat/asm/Label;->srcAndRefPositions:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aget v0, v0, v2

    long-to-int v2, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 445
    :cond_1
    return v1
.end method

.method put(Lcom/sleepycat/asm/MethodWriter;Lcom/sleepycat/asm/ByteVector;IZ)V
    .locals 3
    .param p1, "owner"    # Lcom/sleepycat/asm/MethodWriter;
    .param p2, "out"    # Lcom/sleepycat/asm/ByteVector;
    .param p3, "source"    # I
    .param p4, "wideOffset"    # Z

    .line 306
    iget v0, p0, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 307
    const/4 v0, -0x1

    if-eqz p4, :cond_0

    .line 308
    rsub-int/lit8 v1, p3, -0x1

    iget v2, p2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/asm/Label;->addReference(II)V

    .line 309
    invoke-virtual {p2, v0}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_0

    .line 311
    :cond_0
    iget v1, p2, Lcom/sleepycat/asm/ByteVector;->length:I

    invoke-direct {p0, p3, v1}, Lcom/sleepycat/asm/Label;->addReference(II)V

    .line 312
    invoke-virtual {p2, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_0

    .line 315
    :cond_1
    if-eqz p4, :cond_2

    .line 316
    iget v0, p0, Lcom/sleepycat/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lcom/sleepycat/asm/ByteVector;->putInt(I)Lcom/sleepycat/asm/ByteVector;

    goto :goto_0

    .line 318
    :cond_2
    iget v0, p0, Lcom/sleepycat/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lcom/sleepycat/asm/ByteVector;->putShort(I)Lcom/sleepycat/asm/ByteVector;

    .line 321
    :goto_0
    return-void
.end method

.method resolve(Lcom/sleepycat/asm/MethodWriter;I[B)Z
    .locals 8
    .param p1, "owner"    # Lcom/sleepycat/asm/MethodWriter;
    .param p2, "position"    # I
    .param p3, "data"    # [B

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "needUpdate":Z
    iget v1, p0, Lcom/sleepycat/asm/Label;->status:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sleepycat/asm/Label;->status:I

    .line 377
    iput p2, p0, Lcom/sleepycat/asm/Label;->position:I

    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sleepycat/asm/Label;->referenceCount:I

    if-ge v1, v2, :cond_4

    .line 380
    iget-object v2, p0, Lcom/sleepycat/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget v1, v2, v1

    .line 381
    .local v1, "source":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget v2, v2, v3

    .line 383
    .local v2, "reference":I
    if-ltz v1, :cond_3

    .line 384
    sub-int v3, p2, v1

    .line 385
    .local v3, "offset":I
    const/16 v5, -0x8000

    if-lt v3, v5, :cond_0

    const/16 v5, 0x7fff

    if-le v3, v5, :cond_2

    .line 395
    :cond_0
    add-int/lit8 v5, v2, -0x1

    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    .line 396
    .local v5, "opcode":I
    const/16 v6, 0xa8

    if-gt v5, v6, :cond_1

    .line 398
    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v7, v5, 0x31

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    goto :goto_1

    .line 401
    :cond_1
    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v7, v5, 0x14

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 403
    :goto_1
    const/4 v0, 0x1

    .line 405
    .end local v5    # "opcode":I
    :cond_2
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "reference":I
    .local v5, "reference":I
    ushr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    .line 406
    int-to-byte v2, v3

    aput-byte v2, p3, v5

    goto :goto_2

    .line 408
    .end local v3    # "offset":I
    .end local v5    # "reference":I
    .restart local v2    # "reference":I
    :cond_3
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x1

    .line 409
    .restart local v3    # "offset":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "reference":I
    .restart local v5    # "reference":I
    ushr-int/lit8 v6, v3, 0x18

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    .line 410
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "reference":I
    .restart local v2    # "reference":I
    ushr-int/lit8 v6, v3, 0x10

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 411
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "reference":I
    .restart local v5    # "reference":I
    ushr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    .line 412
    int-to-byte v2, v3

    aput-byte v2, p3, v5

    .line 414
    .end local v1    # "source":I
    .end local v3    # "offset":I
    .end local v5    # "reference":I
    :goto_2
    move v1, v4

    goto :goto_0

    .line 415
    .end local v4    # "i":I
    .local v1, "i":I
    :cond_4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visitSubroutine(Lcom/sleepycat/asm/Label;JI)V
    .locals 4
    .param p1, "JSR"    # Lcom/sleepycat/asm/Label;
    .param p2, "id"    # J
    .param p4, "nbSubroutines"    # I

    .line 503
    move-object v0, p0

    .line 504
    .local v0, "stack":Lcom/sleepycat/asm/Label;
    :goto_0
    if-eqz v0, :cond_7

    .line 506
    move-object v1, v0

    .line 507
    .local v1, "l":Lcom/sleepycat/asm/Label;
    iget-object v0, v1, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    .line 508
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    .line 510
    if-eqz p1, :cond_1

    .line 511
    iget v2, v1, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_0

    .line 512
    goto :goto_0

    .line 514
    :cond_0
    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Lcom/sleepycat/asm/Label;->status:I

    .line 516
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_3

    .line 517
    invoke-virtual {v1, p1}, Lcom/sleepycat/asm/Label;->inSameSubroutine(Lcom/sleepycat/asm/Label;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 518
    new-instance v2, Lcom/sleepycat/asm/Edge;

    invoke-direct {v2}, Lcom/sleepycat/asm/Edge;-><init>()V

    .line 519
    .local v2, "e":Lcom/sleepycat/asm/Edge;
    iget v3, v1, Lcom/sleepycat/asm/Label;->inputStackTop:I

    iput v3, v2, Lcom/sleepycat/asm/Edge;->info:I

    .line 520
    iget-object v3, p1, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    iget-object v3, v3, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    iput-object v3, v2, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    .line 521
    iget-object v3, v1, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    iput-object v3, v2, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    .line 522
    iput-object v2, v1, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    .line 523
    .end local v2    # "e":Lcom/sleepycat/asm/Edge;
    goto :goto_1

    .line 527
    :cond_1
    invoke-virtual {v1, p2, p3}, Lcom/sleepycat/asm/Label;->inSubroutine(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {v1, p2, p3, p4}, Lcom/sleepycat/asm/Label;->addToSubroutine(JI)V

    .line 534
    :cond_3
    :goto_1
    iget-object v2, v1, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    .line 535
    .restart local v2    # "e":Lcom/sleepycat/asm/Edge;
    :goto_2
    if-eqz v2, :cond_6

    .line 539
    iget v3, v1, Lcom/sleepycat/asm/Label;->status:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/sleepycat/asm/Label;->successors:Lcom/sleepycat/asm/Edge;

    iget-object v3, v3, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    if-eq v2, v3, :cond_5

    .line 541
    :cond_4
    iget-object v3, v2, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    iget-object v3, v3, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    if-nez v3, :cond_5

    .line 542
    iget-object v3, v2, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    iput-object v0, v3, Lcom/sleepycat/asm/Label;->next:Lcom/sleepycat/asm/Label;

    .line 543
    iget-object v0, v2, Lcom/sleepycat/asm/Edge;->successor:Lcom/sleepycat/asm/Label;

    .line 546
    :cond_5
    iget-object v2, v2, Lcom/sleepycat/asm/Edge;->next:Lcom/sleepycat/asm/Edge;

    goto :goto_2

    .line 548
    .end local v1    # "l":Lcom/sleepycat/asm/Label;
    .end local v2    # "e":Lcom/sleepycat/asm/Edge;
    :cond_6
    goto :goto_0

    .line 549
    :cond_7
    return-void
.end method
