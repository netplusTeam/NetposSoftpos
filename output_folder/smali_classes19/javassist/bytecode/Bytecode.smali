.class public Ljavassist/bytecode/Bytecode;
.super Ljavassist/bytecode/ByteVector;
.source "Bytecode.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljavassist/bytecode/Opcode;


# static fields
.field public static final THIS:Ljavassist/CtClass;


# instance fields
.field constPool:Ljavassist/bytecode/ConstPool;

.field maxLocals:I

.field maxStack:I

.field private stackDepth:I

.field tryblocks:Ljavassist/bytecode/ExceptionTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    sget-object v0, Ljavassist/bytecode/ConstPool;->THIS:Ljavassist/CtClass;

    sput-object v0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;II)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "stacksize"    # I
    .param p3, "localvars"    # I

    .line 142
    invoke-direct {p0}, Ljavassist/bytecode/ByteVector;-><init>()V

    .line 143
    iput-object p1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    .line 144
    iput p2, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    .line 145
    iput p3, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    .line 146
    new-instance v0, Ljavassist/bytecode/ExceptionTable;

    invoke-direct {v0, p1}, Ljavassist/bytecode/ExceptionTable;-><init>(Ljavassist/bytecode/ConstPool;)V

    iput-object v0, p0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/Bytecode;->stackDepth:I

    .line 148
    return-void
.end method

.method private addInvokestatic(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "clazz"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "isInterface"    # Z

    .line 1073
    const/16 v0, 0xb8

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1075
    if-eqz p4, :cond_0

    .line 1076
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addInterfaceMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    goto :goto_0

    .line 1078
    .end local v0    # "index":I
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1080
    .restart local v0    # "index":I
    :goto_0
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1081
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1082
    return-void
.end method

.method private addPutfield0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljavassist/CtClass;
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 1411
    const/16 v0, 0xb5

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1413
    if-nez p2, :cond_0

    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v0

    goto :goto_0

    .line 1414
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    nop

    .line 1415
    .local v0, "ci":I
    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0, p3, p4}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1416
    invoke-static {p4}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1417
    return-void
.end method

.method private addPutstatic0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljavassist/CtClass;
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 1444
    const/16 v0, 0xb3

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1446
    if-nez p2, :cond_0

    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v0

    goto :goto_0

    .line 1447
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    nop

    .line 1448
    .local v0, "ci":I
    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0, p3, p4}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1449
    invoke-static {p4}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1450
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 0
    .param p1, "code"    # I

    .line 389
    invoke-super {p0, p1}, Ljavassist/bytecode/ByteVector;->add(I)V

    .line 390
    return-void
.end method

.method public bridge synthetic add(II)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/ByteVector;->add(II)V

    return-void
.end method

.method public bridge synthetic add(IIII)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Ljavassist/bytecode/ByteVector;->add(IIII)V

    return-void
.end method

.method public add32bit(I)V
    .locals 3
    .param p1, "value"    # I

    .line 396
    shr-int/lit8 v0, p1, 0x18

    shr-int/lit8 v1, p1, 0x10

    shr-int/lit8 v2, p1, 0x8

    invoke-virtual {p0, v0, v1, v2, p1}, Ljavassist/bytecode/Bytecode;->add(IIII)V

    .line 397
    return-void
.end method

.method public addAload(I)V
    .locals 2
    .param p1, "n"    # I

    .line 468
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 469
    add-int/lit8 v0, p1, 0x2a

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 470
    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x19

    if-ge p1, v0, :cond_1

    .line 471
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 472
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 475
    :cond_1
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 476
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 477
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 479
    :goto_0
    return-void
.end method

.method public addAnewarray(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .line 1311
    const/16 v0, 0xbd

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1312
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1313
    return-void
.end method

.method public addAnewarray(Ljavassist/CtClass;I)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "length"    # I

    .line 1322
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1323
    const/16 v0, 0xbd

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1324
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1325
    return-void
.end method

.method public addAstore(I)V
    .locals 2
    .param p1, "n"    # I

    .line 487
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 488
    add-int/lit8 v0, p1, 0x4b

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 489
    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x3a

    if-ge p1, v0, :cond_1

    .line 490
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 491
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 494
    :cond_1
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 495
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 496
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 498
    :goto_0
    return-void
.end method

.method public addCheckcast(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .line 832
    const/16 v0, 0xc0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 833
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 834
    return-void
.end method

.method public addCheckcast(Ljavassist/CtClass;)V
    .locals 1
    .param p1, "c"    # Ljavassist/CtClass;

    .line 822
    const/16 v0, 0xc0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 823
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 824
    return-void
.end method

.method public addConstZero(Ljavassist/CtClass;)V
    .locals 2
    .param p1, "type"    # Ljavassist/CtClass;

    .line 528
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 529
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    .line 530
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 531
    :cond_0
    sget-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_1

    .line 532
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 533
    :cond_1
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_2

    .line 534
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 535
    :cond_2
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-eq p1, v0, :cond_3

    .line 538
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 536
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "void type?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 542
    :goto_0
    return-void
.end method

.method public addDconst(D)V
    .locals 2
    .param p1, "d"    # D

    .line 638
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/Bytecode;->addLdc2w(D)V

    goto :goto_1

    .line 639
    :cond_1
    :goto_0
    double-to-int v0, p1

    add-int/lit8 v0, v0, 0xe

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 642
    :goto_1
    return-void
.end method

.method public addDload(I)V
    .locals 2
    .param p1, "n"    # I

    .line 650
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 651
    add-int/lit8 v0, p1, 0x26

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 652
    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x18

    if-ge p1, v0, :cond_1

    .line 653
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 654
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 657
    :cond_1
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 658
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 659
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 661
    :goto_0
    return-void
.end method

.method public addDstore(I)V
    .locals 2
    .param p1, "n"    # I

    .line 669
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 670
    add-int/lit8 v0, p1, 0x47

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 671
    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x39

    if-ge p1, v0, :cond_1

    .line 672
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 673
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 676
    :cond_1
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 677
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 678
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 680
    :goto_0
    return-void
.end method

.method public addExceptionHandler(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "handler"    # I
    .param p4, "type"    # I

    .line 313
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavassist/bytecode/ExceptionTable;->add(IIII)V

    .line 314
    return-void
.end method

.method public addExceptionHandler(IIILjava/lang/String;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "handler"    # I
    .param p4, "type"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    .line 305
    invoke-virtual {v0, p4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 304
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIII)V

    .line 306
    return-void
.end method

.method public addExceptionHandler(IIILjavassist/CtClass;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "handler"    # I
    .param p4, "type"    # Ljavassist/CtClass;

    .line 293
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    .line 294
    invoke-virtual {v0, p4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v0

    .line 293
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavassist/bytecode/Bytecode;->addExceptionHandler(IIII)V

    .line 295
    return-void
.end method

.method public addFconst(F)V
    .locals 1
    .param p1, "f"    # F

    .line 688
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addFloatInfo(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addLdc(I)V

    goto :goto_1

    .line 689
    :cond_1
    :goto_0
    float-to-int v0, p1

    add-int/lit8 v0, v0, 0xb

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 692
    :goto_1
    return-void
.end method

.method public addFload(I)V
    .locals 2
    .param p1, "n"    # I

    .line 700
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 701
    add-int/lit8 v0, p1, 0x22

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 702
    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x17

    if-ge p1, v0, :cond_1

    .line 703
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 704
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 707
    :cond_1
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 708
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 709
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 711
    :goto_0
    return-void
.end method

.method public addFstore(I)V
    .locals 2
    .param p1, "n"    # I

    .line 719
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 720
    add-int/lit8 v0, p1, 0x43

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 721
    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x38

    if-ge p1, v0, :cond_1

    .line 722
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 723
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 726
    :cond_1
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 727
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 728
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 730
    :goto_0
    return-void
.end method

.method public addGap(I)V
    .locals 0
    .param p1, "length"    # I

    .line 406
    invoke-super {p0, p1}, Ljavassist/bytecode/ByteVector;->addGap(I)V

    .line 407
    return-void
.end method

.method public addGetfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 872
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 873
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 874
    .local v0, "ci":I
    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0, p2, p3}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 875
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 876
    return-void
.end method

.method public addGetfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "c"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 856
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 857
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v0

    .line 858
    .local v0, "ci":I
    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0, p2, p3}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 859
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 860
    return-void
.end method

.method public addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 904
    const/16 v0, 0xb2

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 905
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 906
    .local v0, "ci":I
    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0, p2, p3}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 907
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 908
    return-void
.end method

.method public addGetstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "c"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 888
    const/16 v0, 0xb2

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 889
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v0

    .line 890
    .local v0, "ci":I
    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, v0, p2, p3}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 891
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 892
    return-void
.end method

.method public addIconst(I)V
    .locals 1
    .param p1, "n"    # I

    .line 506
    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    const/4 v0, -0x2

    if-ge v0, p1, :cond_0

    .line 507
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 508
    :cond_0
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    const/16 v0, -0x80

    if-gt v0, p1, :cond_1

    .line 509
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 510
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 512
    :cond_1
    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2

    const/16 v0, -0x8000

    if-gt v0, p1, :cond_2

    .line 513
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 514
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 515
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 518
    :cond_2
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addIntegerInfo(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addLdc(I)V

    .line 519
    :goto_0
    return-void
.end method

.method public addIload(I)V
    .locals 2
    .param p1, "n"    # I

    .line 550
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 551
    add-int/lit8 v0, p1, 0x1a

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 552
    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x15

    if-ge p1, v0, :cond_1

    .line 553
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 554
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 557
    :cond_1
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 558
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 559
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 561
    :goto_0
    return-void
.end method

.method public addIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 459
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/Bytecode;->add(II)V

    .line 460
    return-void
.end method

.method public addInstanceof(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .line 842
    const/16 v0, 0xc1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 843
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 844
    return-void
.end method

.method public addInvokedynamic(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bootstrap"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1235
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2, p3}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1236
    .local v0, "nt":I
    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, p1, v0}, Ljavassist/bytecode/ConstPool;->addInvokeDynamicInfo(II)I

    move-result v1

    .line 1237
    .local v1, "dyn":I
    const/16 v2, 0xba

    invoke-virtual {p0, v2}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1238
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1239
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Ljavassist/bytecode/Bytecode;->add(II)V

    .line 1240
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1241
    return-void
.end method

.method public addInvokeinterface(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "clazz"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "count"    # I

    .line 1217
    const/16 v0, 0xb9

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1218
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addInterfaceMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1219
    invoke-virtual {p0, p4}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1221
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1222
    return-void
.end method

.method public addInvokeinterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "count"    # I

    .line 1200
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Ljavassist/bytecode/Bytecode;->addInvokeinterface(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1202
    return-void
.end method

.method public addInvokeinterface(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "count"    # I

    .line 1184
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Ljavassist/bytecode/Bytecode;->addInvokeinterface(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1186
    return-void
.end method

.method public addInvokeinterface(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;[Ljavassist/CtClass;I)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "returnType"    # Ljavassist/CtClass;
    .param p4, "paramTypes"    # [Ljavassist/CtClass;
    .param p5, "count"    # I

    .line 1168
    invoke-static {p3, p4}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0, p5}, Ljavassist/bytecode/Bytecode;->addInvokeinterface(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1170
    return-void
.end method

.method public addInvokespecial(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 1005
    const/16 v0, 0xb7

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1006
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1007
    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1008
    return-void
.end method

.method public addInvokespecial(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazz"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 968
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ZILjava/lang/String;Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method public addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 952
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ZILjava/lang/String;Ljava/lang/String;)V

    .line 953
    return-void
.end method

.method public addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 935
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    .line 936
    .local v0, "isInterface":Z
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    .line 937
    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v1

    .line 936
    invoke-virtual {p0, v0, v1, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ZILjava/lang/String;Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;[Ljavassist/CtClass;)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "returnType"    # Ljavassist/CtClass;
    .param p4, "paramTypes"    # [Ljavassist/CtClass;

    .line 920
    invoke-static {p3, p4}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method public addInvokespecial(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "isInterface"    # Z
    .param p2, "clazz"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 986
    if-eqz p1, :cond_0

    .line 987
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2, p3, p4}, Ljavassist/bytecode/ConstPool;->addInterfaceMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    goto :goto_0

    .line 989
    .end local v0    # "index":I
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p2, p3, p4}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 991
    .restart local v0    # "index":I
    :goto_0
    invoke-virtual {p0, v0, p4}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ILjava/lang/String;)V

    .line 992
    return-void
.end method

.method public addInvokestatic(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazz"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1068
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljavassist/bytecode/Bytecode;->addInvokestatic(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1069
    return-void
.end method

.method public addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1054
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokestatic(ILjava/lang/String;Ljava/lang/String;)V

    .line 1055
    return-void
.end method

.method public addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1035
    sget-object v0, Ljavassist/bytecode/Bytecode;->THIS:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    .line 1036
    const/4 v0, 0x0

    .local v0, "isInterface":Z
    goto :goto_0

    .line 1038
    .end local v0    # "isInterface":Z
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    .line 1040
    .restart local v0    # "isInterface":Z
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v1

    invoke-direct {p0, v1, p2, p3, v0}, Ljavassist/bytecode/Bytecode;->addInvokestatic(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1041
    return-void
.end method

.method public addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;[Ljavassist/CtClass;)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "returnType"    # Ljavassist/CtClass;
    .param p4, "paramTypes"    # [Ljavassist/CtClass;

    .line 1020
    invoke-static {p3, p4}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method public addInvokevirtual(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazz"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1151
    const/16 v0, 0xb6

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1152
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2, p3}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1153
    invoke-static {p3}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1154
    return-void
.end method

.method public addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1133
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(ILjava/lang/String;Ljava/lang/String;)V

    .line 1134
    return-void
.end method

.method public addInvokevirtual(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1116
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(ILjava/lang/String;Ljava/lang/String;)V

    .line 1117
    return-void
.end method

.method public addInvokevirtual(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;[Ljavassist/CtClass;)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "returnType"    # Ljavassist/CtClass;
    .param p4, "paramTypes"    # [Ljavassist/CtClass;

    .line 1098
    invoke-static {p3, p4}, Ljavassist/bytecode/Descriptor;->ofMethod(Ljavassist/CtClass;[Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method public addIstore(I)V
    .locals 2
    .param p1, "n"    # I

    .line 569
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 570
    add-int/lit8 v0, p1, 0x3b

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 571
    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x36

    if-ge p1, v0, :cond_1

    .line 572
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 573
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 576
    :cond_1
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 577
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 578
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 580
    :goto_0
    return-void
.end method

.method public addLconst(J)V
    .locals 2
    .param p1, "n"    # J

    .line 588
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavassist/bytecode/Bytecode;->addLdc2w(J)V

    goto :goto_1

    .line 589
    :cond_1
    :goto_0
    long-to-int v0, p1

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 592
    :goto_1
    return-void
.end method

.method public addLdc(I)V
    .locals 1
    .param p1, "i"    # I

    .line 1259
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 1260
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1261
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    goto :goto_0

    .line 1264
    :cond_0
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1265
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1267
    :goto_0
    return-void
.end method

.method public addLdc(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1250
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addStringInfo(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addLdc(I)V

    .line 1251
    return-void
.end method

.method public addLdc2w(D)V
    .locals 1
    .param p1, "d"    # D

    .line 1281
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1282
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->addDoubleInfo(D)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1283
    return-void
.end method

.method public addLdc2w(J)V
    .locals 1
    .param p1, "l"    # J

    .line 1273
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1274
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->addLongInfo(J)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1275
    return-void
.end method

.method public addLload(I)V
    .locals 2
    .param p1, "n"    # I

    .line 600
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 601
    add-int/lit8 v0, p1, 0x1e

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 602
    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x16

    if-ge p1, v0, :cond_1

    .line 603
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 604
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 607
    :cond_1
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 608
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 609
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 611
    :goto_0
    return-void
.end method

.method public addLoad(ILjavassist/CtClass;)I
    .locals 2
    .param p1, "n"    # I
    .param p2, "type"    # Ljavassist/CtClass;

    .line 741
    invoke-virtual {p2}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 742
    sget-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 746
    :cond_0
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    const/4 v1, 0x2

    if-ne p2, v0, :cond_1

    .line 747
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLload(I)V

    .line 748
    return v1

    .line 750
    :cond_1
    sget-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_2

    .line 751
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addFload(I)V

    goto :goto_1

    .line 752
    :cond_2
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_3

    .line 753
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addDload(I)V

    .line 754
    return v1

    .line 757
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "void type?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    goto :goto_1

    .line 760
    :cond_5
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 762
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public addLoadParameters([Ljavassist/CtClass;I)I
    .locals 5
    .param p1, "params"    # [Ljavassist/CtClass;
    .param p2, "offset"    # I

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "stacksize":I
    if-eqz p1, :cond_0

    .line 808
    array-length v1, p1

    .line 809
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 810
    add-int v3, v0, p2

    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v3

    add-int/2addr v0, v3

    .line 809
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 813
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public addLstore(I)V
    .locals 2
    .param p1, "n"    # I

    .line 619
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 620
    add-int/lit8 v0, p1, 0x3f

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 621
    :cond_0
    const/16 v0, 0x100

    const/16 v1, 0x37

    if-ge p1, v0, :cond_1

    .line 622
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 623
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 626
    :cond_1
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 627
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 628
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 630
    :goto_0
    return-void
.end method

.method public addMultiNewarray(Ljava/lang/String;I)I
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dim"    # I

    .line 1379
    const/16 v0, 0xc5

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1380
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1381
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1382
    rsub-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1383
    return p2
.end method

.method public addMultiNewarray(Ljavassist/CtClass;I)I
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "dim"    # I

    .line 1364
    const/16 v0, 0xc5

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1365
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1366
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1367
    rsub-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1368
    return p2
.end method

.method public addMultiNewarray(Ljavassist/CtClass;[I)I
    .locals 3
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "dimensions"    # [I

    .line 1347
    array-length v0, p2

    .line 1348
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1349
    aget v2, p2, v1

    invoke-virtual {p0, v2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1351
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 1352
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/Bytecode;->addMultiNewarray(Ljavassist/CtClass;I)I

    move-result v1

    return v1
.end method

.method public addNew(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .line 1301
    const/16 v0, 0xbb

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1302
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1303
    return-void
.end method

.method public addNew(Ljavassist/CtClass;)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;

    .line 1291
    const/16 v0, 0xbb

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1292
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1293
    return-void
.end method

.method public addNewarray(II)V
    .locals 1
    .param p1, "atype"    # I
    .param p2, "length"    # I

    .line 1334
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1335
    const/16 v0, 0xbc

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1336
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1337
    return-void
.end method

.method public addOpcode(I)V
    .locals 1
    .param p1, "code"    # I

    .line 421
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 422
    sget-object v0, Ljavassist/bytecode/Bytecode;->STACK_GROW:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 423
    return-void
.end method

.method public addPrintln(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 1492
    const-string v0, "java.lang.System"

    const-string v1, "err"

    const-string v2, "Ljava/io/PrintStream;"

    invoke-virtual {p0, v0, v1, v2}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 1494
    const-string v0, "java.io.PrintStream"

    const-string v1, "println"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-virtual {p0, v0, v1, v2}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    return-void
.end method

.method public addPutfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1406
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addPutfield0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    return-void
.end method

.method public addPutfield(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1394
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ljavassist/bytecode/Bytecode;->addPutfield0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    return-void
.end method

.method public addPutstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1439
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Ljavassist/bytecode/Bytecode;->addPutstatic0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    return-void
.end method

.method public addPutstatic(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Ljavassist/CtClass;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1427
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ljavassist/bytecode/Bytecode;->addPutstatic0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    return-void
.end method

.method public addRet(I)V
    .locals 2
    .param p1, "var"    # I

    .line 1474
    const/16 v0, 0xa9

    const/16 v1, 0x100

    if-ge p1, v1, :cond_0

    .line 1475
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1476
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 1479
    :cond_0
    const/16 v1, 0xc4

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1480
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1481
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1483
    :goto_0
    return-void
.end method

.method public addReturn(Ljavassist/CtClass;)V
    .locals 2
    .param p1, "type"    # Ljavassist/CtClass;

    .line 1458
    if-nez p1, :cond_0

    .line 1459
    const/16 v0, 0xb1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 1460
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1461
    move-object v0, p1

    check-cast v0, Ljavassist/CtPrimitiveType;

    .line 1462
    .local v0, "ptype":Ljavassist/CtPrimitiveType;
    invoke-virtual {v0}, Ljavassist/CtPrimitiveType;->getReturnOp()I

    move-result v1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1463
    .end local v0    # "ptype":Ljavassist/CtPrimitiveType;
    goto :goto_0

    .line 1465
    :cond_1
    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1466
    :goto_0
    return-void
.end method

.method public addStore(ILjavassist/CtClass;)I
    .locals 2
    .param p1, "n"    # I
    .param p2, "type"    # Ljavassist/CtClass;

    .line 774
    invoke-virtual {p2}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 775
    sget-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    const/4 v1, 0x2

    if-ne p2, v0, :cond_1

    .line 780
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    .line 781
    return v1

    .line 783
    :cond_1
    sget-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_2

    .line 784
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    goto :goto_1

    .line 785
    :cond_2
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p2, v0, :cond_3

    .line 786
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    .line 787
    return v1

    .line 790
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "void type?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIstore(I)V

    goto :goto_1

    .line 793
    :cond_5
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 795
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 171
    :try_start_0
    invoke-super {p0}, Ljavassist/bytecode/ByteVector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/Bytecode;

    .line 172
    .local v0, "bc":Ljavassist/bytecode/Bytecode;
    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;

    invoke-virtual {v1}, Ljavassist/bytecode/ExceptionTable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/ExceptionTable;

    iput-object v1, v0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    return-object v0

    .line 175
    .end local v0    # "bc":Ljavassist/bytecode/Bytecode;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public currentPc()I
    .locals 1

    .line 321
    invoke-virtual {p0}, Ljavassist/bytecode/Bytecode;->getSize()I

    move-result v0

    return v0
.end method

.method public get()[B
    .locals 1

    .line 209
    invoke-virtual {p0}, Ljavassist/bytecode/Bytecode;->copy()[B

    move-result-object v0

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 183
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getExceptionTable()Ljavassist/bytecode/ExceptionTable;
    .locals 1

    .line 188
    iget-object v0, p0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;

    return-object v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 238
    iget v0, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    return v0
.end method

.method public getMaxStack()I
    .locals 1

    .line 215
    iget v0, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    return v0
.end method

.method public getStackDepth()I
    .locals 1

    .line 439
    iget v0, p0, Ljavassist/bytecode/Bytecode;->stackDepth:I

    return v0
.end method

.method public growStack(I)V
    .locals 1
    .param p1, "diff"    # I

    .line 433
    iget v0, p0, Ljavassist/bytecode/Bytecode;->stackDepth:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->setStackDepth(I)V

    .line 434
    return-void
.end method

.method public incMaxLocals(I)V
    .locals 1
    .param p1, "diff"    # I

    .line 285
    iget v0, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    .line 286
    return-void
.end method

.method public length()I
    .locals 1

    .line 202
    invoke-virtual {p0}, Ljavassist/bytecode/Bytecode;->getSize()I

    move-result v0

    return v0
.end method

.method public read(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 332
    invoke-super {p0, p1}, Ljavassist/bytecode/ByteVector;->read(I)I

    move-result v0

    return v0
.end method

.method public read16bit(I)I
    .locals 4
    .param p1, "offset"    # I

    .line 340
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->read(I)I

    move-result v0

    .line 341
    .local v0, "v1":I
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->read(I)I

    move-result v1

    .line 342
    .local v1, "v2":I
    shl-int/lit8 v2, v0, 0x8

    and-int/lit16 v3, v1, 0xff

    add-int/2addr v2, v3

    return v2
.end method

.method public read32bit(I)I
    .locals 4
    .param p1, "offset"    # I

    .line 350
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->read16bit(I)I

    move-result v0

    .line 351
    .local v0, "v1":I
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->read16bit(I)I

    move-result v1

    .line 352
    .local v1, "v2":I
    shl-int/lit8 v2, v0, 0x10

    const v3, 0xffff

    and-int/2addr v3, v1

    add-int/2addr v2, v3

    return v2
.end method

.method public setMaxLocals(I)V
    .locals 0
    .param p1, "size"    # I

    .line 244
    iput p1, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    .line 245
    return-void
.end method

.method public setMaxLocals(Z[Ljavassist/CtClass;I)V
    .locals 5
    .param p1, "isStatic"    # Z
    .param p2, "params"    # [Ljavassist/CtClass;
    .param p3, "locals"    # I

    .line 262
    if-nez p1, :cond_0

    .line 263
    add-int/lit8 p3, p3, 0x1

    .line 265
    :cond_0
    if-eqz p2, :cond_3

    .line 266
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    .line 267
    .local v0, "doubleType":Ljavassist/CtClass;
    sget-object v1, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    .line 268
    .local v1, "longType":Ljavassist/CtClass;
    array-length v2, p2

    .line 269
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 270
    aget-object v4, p2, v3

    .line 271
    .local v4, "type":Ljavassist/CtClass;
    if-eq v4, v0, :cond_2

    if-ne v4, v1, :cond_1

    goto :goto_1

    .line 274
    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 272
    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x2

    .line 269
    .end local v4    # "type":Ljavassist/CtClass;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "doubleType":Ljavassist/CtClass;
    .end local v1    # "longType":Ljavassist/CtClass;
    .end local v2    # "n":I
    .end local v3    # "i":I
    :cond_3
    iput p3, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    .line 279
    return-void
.end method

.method public setMaxStack(I)V
    .locals 0
    .param p1, "size"    # I

    .line 232
    iput p1, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    .line 233
    return-void
.end method

.method public setStackDepth(I)V
    .locals 1
    .param p1, "depth"    # I

    .line 449
    iput p1, p0, Ljavassist/bytecode/Bytecode;->stackDepth:I

    .line 450
    iget v0, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    if-le p1, v0, :cond_0

    .line 451
    iput p1, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    .line 452
    :cond_0
    return-void
.end method

.method public toCodeAttribute()Ljavassist/bytecode/CodeAttribute;
    .locals 7

    .line 194
    new-instance v6, Ljavassist/bytecode/CodeAttribute;

    iget-object v1, p0, Ljavassist/bytecode/Bytecode;->constPool:Ljavassist/bytecode/ConstPool;

    iget v2, p0, Ljavassist/bytecode/Bytecode;->maxStack:I

    iget v3, p0, Ljavassist/bytecode/Bytecode;->maxLocals:I

    .line 195
    invoke-virtual {p0}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v4

    iget-object v5, p0, Ljavassist/bytecode/Bytecode;->tryblocks:Ljavassist/bytecode/ExceptionTable;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/CodeAttribute;-><init>(Ljavassist/bytecode/ConstPool;II[BLjavassist/bytecode/ExceptionTable;)V

    .line 194
    return-object v6
.end method

.method public write(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 363
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/ByteVector;->write(II)V

    .line 364
    return-void
.end method

.method public write16bit(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 371
    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/Bytecode;->write(II)V

    .line 372
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, p2}, Ljavassist/bytecode/Bytecode;->write(II)V

    .line 373
    return-void
.end method

.method public write32bit(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 380
    shr-int/lit8 v0, p2, 0x10

    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 381
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0, p2}, Ljavassist/bytecode/Bytecode;->write16bit(II)V

    .line 382
    return-void
.end method
