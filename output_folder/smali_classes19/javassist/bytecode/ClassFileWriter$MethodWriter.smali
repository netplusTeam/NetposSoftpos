.class public final Ljavassist/bytecode/ClassFileWriter$MethodWriter;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/ClassFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodWriter"
.end annotation


# instance fields
.field private catchCount:I

.field private catchPos:I

.field protected codeIndex:I

.field protected constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

.field private isAbstract:Z

.field private methodCount:I

.field protected output:Ljavassist/bytecode/ByteStream;

.field protected stackIndex:I

.field private startPos:I

.field protected throwsIndex:I


# direct methods
.method constructor <init>(Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Ljavassist/bytecode/ByteStream;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljavassist/bytecode/ByteStream;-><init>(I)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    .line 326
    iput-object p1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->methodCount:I

    .line 328
    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->codeIndex:I

    .line 329
    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->throwsIndex:I

    .line 330
    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->stackIndex:I

    .line 331
    return-void
.end method

.method private writeThrows([I)V
    .locals 3
    .param p1, "exceptions"    # [I

    .line 397
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->throwsIndex:I

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->throwsIndex:I

    .line 400
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->throwsIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 401
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    .line 402
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 404
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "b"    # I

    .line 413
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->write(I)V

    .line 414
    return-void
.end method

.method public add16(I)V
    .locals 1
    .param p1, "b"    # I

    .line 420
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 421
    return-void
.end method

.method public add32(I)V
    .locals 1
    .param p1, "b"    # I

    .line 427
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    .line 428
    return-void
.end method

.method public addCatch(IIII)V
    .locals 1
    .param p1, "startPc"    # I
    .param p2, "endPc"    # I
    .param p3, "handlerPc"    # I
    .param p4, "catchType"    # I

    .line 466
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchCount:I

    .line 467
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 468
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 469
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p3}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 470
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p4}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 471
    return-void
.end method

.method public addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "targetClass"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 437
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 438
    .local v0, "target":I
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v1, p3, p4}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 439
    .local v1, "nt":I
    iget-object v2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v2, v0, v1}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addMethodrefInfo(II)I

    move-result v2

    .line 440
    .local v2, "method":I
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->add(I)V

    .line 441
    invoke-virtual {p0, v2}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->add16(I)V

    .line 442
    return-void
.end method

.method public begin(III[ILjavassist/bytecode/ClassFileWriter$AttributeWriter;)V
    .locals 4
    .param p1, "accessFlags"    # I
    .param p2, "name"    # I
    .param p3, "descriptor"    # I
    .param p4, "exceptions"    # [I
    .param p5, "aw"    # Ljavassist/bytecode/ClassFileWriter$AttributeWriter;

    .line 368
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->methodCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->methodCount:I

    .line 369
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 370
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 371
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p3}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 372
    and-int/lit16 v0, p1, 0x400

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->isAbstract:Z

    .line 374
    xor-int/2addr v0, v1

    .line 375
    .local v0, "attrCount":I
    if-eqz p4, :cond_1

    .line 376
    add-int/lit8 v0, v0, 0x1

    .line 378
    :cond_1
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-static {v1, p5, v0}, Ljavassist/bytecode/ClassFileWriter;->writeAttribute(Ljavassist/bytecode/ByteStream;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;I)V

    .line 380
    if-eqz p4, :cond_2

    .line 381
    invoke-direct {p0, p4}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->writeThrows([I)V

    .line 383
    :cond_2
    iget-boolean v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->isAbstract:Z

    if-nez v1, :cond_4

    .line 384
    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->codeIndex:I

    if-nez v1, :cond_3

    .line 385
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    const-string v3, "Code"

    invoke-virtual {v1, v3}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->codeIndex:I

    .line 387
    :cond_3
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v1}, Ljavassist/bytecode/ByteStream;->getPos()I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    .line 388
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v3, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->codeIndex:I

    invoke-virtual {v1, v3}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 389
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljavassist/bytecode/ByteStream;->writeBlank(I)V

    .line 392
    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchPos:I

    .line 393
    iput v2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchCount:I

    .line 394
    return-void
.end method

.method public begin(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;)V
    .locals 9
    .param p1, "accessFlags"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "exceptions"    # [Ljava/lang/String;
    .param p5, "aw"    # Ljavassist/bytecode/ClassFileWriter$AttributeWriter;

    .line 346
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, "nameIndex":I
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v1, p3}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v7

    .line 349
    .local v7, "descIndex":I
    if-nez p4, :cond_0

    .line 350
    const/4 v1, 0x0

    move-object v8, v1

    .local v1, "intfs":[I
    goto :goto_0

    .line 352
    .end local v1    # "intfs":[I
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    invoke-virtual {v1, p4}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addClassInfo([Ljava/lang/String;)[I

    move-result-object v1

    move-object v8, v1

    .line 354
    .local v8, "intfs":[I
    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, v7

    move-object v5, v8

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->begin(III[ILjavassist/bytecode/ClassFileWriter$AttributeWriter;)V

    .line 355
    return-void
.end method

.method public codeEnd(II)V
    .locals 4
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 448
    iget-boolean v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->isAbstract:Z

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljavassist/bytecode/ByteStream;->writeShort(II)V

    .line 450
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1, p2}, Ljavassist/bytecode/ByteStream;->writeShort(II)V

    .line 451
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0}, Ljavassist/bytecode/ByteStream;->getPos()I

    move-result v2

    iget v3, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xe

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/ByteStream;->writeInt(II)V

    .line 452
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0}, Ljavassist/bytecode/ByteStream;->getPos()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchPos:I

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchCount:I

    .line 454
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 456
    :cond_0
    return-void
.end method

.method dataSize()I
    .locals 1

    .line 515
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0}, Ljavassist/bytecode/ByteStream;->size()I

    move-result v0

    return v0
.end method

.method public end(Ljavassist/bytecode/StackMapTable$Writer;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;)V
    .locals 5
    .param p1, "smap"    # Ljavassist/bytecode/StackMapTable$Writer;
    .param p2, "aw"    # Ljavassist/bytecode/ClassFileWriter$AttributeWriter;

    .line 482
    iget-boolean v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->isAbstract:Z

    if-eqz v0, :cond_0

    .line 483
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchPos:I

    iget v2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->catchCount:I

    invoke-virtual {v0, v1, v2}, Ljavassist/bytecode/ByteStream;->writeShort(II)V

    .line 488
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 489
    .local v0, "attrCount":I
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-static {v1, p2, v0}, Ljavassist/bytecode/ClassFileWriter;->writeAttribute(Ljavassist/bytecode/ByteStream;Ljavassist/bytecode/ClassFileWriter$AttributeWriter;I)V

    .line 491
    if-eqz p1, :cond_3

    .line 492
    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->stackIndex:I

    if-nez v1, :cond_2

    .line 493
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->constPool:Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;

    const-string v2, "StackMapTable"

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ClassFileWriter$ConstPoolWriter;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->stackIndex:I

    .line 495
    :cond_2
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->stackIndex:I

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ByteStream;->writeShort(I)V

    .line 496
    invoke-virtual {p1}, Ljavassist/bytecode/StackMapTable$Writer;->toByteArray()[B

    move-result-object v1

    .line 497
    .local v1, "data":[B
    iget-object v2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljavassist/bytecode/ByteStream;->writeInt(I)V

    .line 498
    iget-object v2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/ByteStream;->write([B)V

    .line 502
    .end local v1    # "data":[B
    :cond_3
    iget-object v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    iget v2, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Ljavassist/bytecode/ByteStream;->getPos()I

    move-result v3

    iget v4, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v1, v2, v3}, Ljavassist/bytecode/ByteStream;->writeInt(II)V

    .line 503
    return-void
.end method

.method numOfMethods()I
    .locals 1

    .line 513
    iget v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->methodCount:I

    return v0
.end method

.method public size()I
    .locals 2

    .line 511
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0}, Ljavassist/bytecode/ByteStream;->getPos()I

    move-result v0

    iget v1, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->startPos:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xe

    return v0
.end method

.method write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Ljavassist/bytecode/ClassFileWriter$MethodWriter;->output:Ljavassist/bytecode/ByteStream;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ByteStream;->writeTo(Ljava/io/OutputStream;)V

    .line 522
    return-void
.end method
