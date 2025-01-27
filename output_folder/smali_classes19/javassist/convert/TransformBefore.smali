.class public Ljavassist/convert/TransformBefore;
.super Ljavassist/convert/TransformCall;
.source "TransformBefore.java"


# instance fields
.field protected loadCode:[B

.field protected locals:I

.field protected maxLocals:I

.field protected parameterTypes:[Ljavassist/CtClass;

.field protected saveCode:[B


# direct methods
.method public constructor <init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 1
    .param p1, "next"    # Ljavassist/convert/Transformer;
    .param p2, "origMethod"    # Ljavassist/CtMethod;
    .param p3, "beforeMethod"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Ljavassist/convert/TransformCall;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V

    .line 42
    invoke-virtual {p2}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformBefore;->methodDescriptor:Ljava/lang/String;

    .line 44
    invoke-virtual {p2}, Ljavassist/CtMethod;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v0

    iput-object v0, p0, Ljavassist/convert/TransformBefore;->parameterTypes:[Ljavassist/CtClass;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/convert/TransformBefore;->locals:I

    .line 46
    iput v0, p0, Ljavassist/convert/TransformBefore;->maxLocals:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/convert/TransformBefore;->loadCode:[B

    iput-object v0, p0, Ljavassist/convert/TransformBefore;->saveCode:[B

    .line 48
    return-void
.end method

.method private makeCode2(Ljavassist/bytecode/Bytecode;Ljavassist/bytecode/Bytecode;II[Ljavassist/CtClass;I)V
    .locals 8
    .param p1, "save"    # Ljavassist/bytecode/Bytecode;
    .param p2, "load"    # Ljavassist/bytecode/Bytecode;
    .param p3, "i"    # I
    .param p4, "n"    # I
    .param p5, "paramTypes"    # [Ljavassist/CtClass;
    .param p6, "var"    # I

    .line 108
    if-ge p3, p4, :cond_0

    .line 109
    aget-object v0, p5, p3

    invoke-virtual {p2, p6, v0}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    move-result v0

    .line 110
    .local v0, "size":I
    add-int/lit8 v4, p3, 0x1

    add-int v7, p6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Ljavassist/convert/TransformBefore;->makeCode2(Ljavassist/bytecode/Bytecode;Ljavassist/bytecode/Bytecode;II[Ljavassist/CtClass;I)V

    .line 111
    aget-object v1, p5, p3

    invoke-virtual {p1, p6, v1}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 112
    .end local v0    # "size":I
    goto :goto_0

    .line 114
    :cond_0
    iget v0, p0, Ljavassist/convert/TransformBefore;->maxLocals:I

    sub-int v0, p6, v0

    iput v0, p0, Ljavassist/convert/TransformBefore;->locals:I

    .line 115
    :goto_0
    return-void
.end method


# virtual methods
.method public extraLocals()I
    .locals 1

    .line 89
    iget v0, p0, Ljavassist/convert/TransformBefore;->locals:I

    return v0
.end method

.method public initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attr"    # Ljavassist/bytecode/CodeAttribute;

    .line 52
    invoke-super {p0, p1, p2}, Ljavassist/convert/TransformCall;->initialize(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/CodeAttribute;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/convert/TransformBefore;->locals:I

    .line 54
    invoke-virtual {p2}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v0

    iput v0, p0, Ljavassist/convert/TransformBefore;->maxLocals:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/convert/TransformBefore;->loadCode:[B

    iput-object v0, p0, Ljavassist/convert/TransformBefore;->saveCode:[B

    .line 56
    return-void
.end method

.method protected makeCode([Ljavassist/CtClass;Ljavassist/bytecode/ConstPool;)V
    .locals 11
    .param p1, "paramTypes"    # [Ljavassist/CtClass;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 92
    new-instance v0, Ljavassist/bytecode/Bytecode;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 93
    .local v0, "save":Ljavassist/bytecode/Bytecode;
    new-instance v2, Ljavassist/bytecode/Bytecode;

    invoke-direct {v2, p2, v1, v1}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    move-object v9, v2

    .line 95
    .local v9, "load":Ljavassist/bytecode/Bytecode;
    iget v10, p0, Ljavassist/convert/TransformBefore;->maxLocals:I

    .line 96
    .local v10, "var":I
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    move v6, v1

    .line 97
    .local v6, "len":I
    invoke-virtual {v9, v10}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 98
    const/4 v5, 0x0

    add-int/lit8 v8, v10, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, v9

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Ljavassist/convert/TransformBefore;->makeCode2(Ljavassist/bytecode/Bytecode;Ljavassist/bytecode/Bytecode;II[Ljavassist/CtClass;I)V

    .line 99
    invoke-virtual {v0, v10}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 101
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v1

    iput-object v1, p0, Ljavassist/convert/TransformBefore;->saveCode:[B

    .line 102
    invoke-virtual {v9}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v1

    iput-object v1, p0, Ljavassist/convert/TransformBefore;->loadCode:[B

    .line 103
    return-void
.end method

.method protected match(IILjavassist/bytecode/CodeIterator;ILjavassist/bytecode/ConstPool;)I
    .locals 4
    .param p1, "c"    # I
    .param p2, "pos"    # I
    .param p3, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "typedesc"    # I
    .param p5, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 62
    iget v0, p0, Ljavassist/convert/TransformBefore;->newIndex:I

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavassist/convert/TransformBefore;->parameterTypes:[Ljavassist/CtClass;

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->ofParameters([Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/convert/TransformBefore;->classname:Ljava/lang/String;

    invoke-static {v1, v0}, Ljavassist/bytecode/Descriptor;->insertParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Ljavassist/convert/TransformBefore;->newMethodname:Ljava/lang/String;

    invoke-virtual {p5, v1, v0}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, "nt":I
    iget-object v2, p0, Ljavassist/convert/TransformBefore;->newClassname:Ljava/lang/String;

    invoke-virtual {p5, v2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, "ci":I
    invoke-virtual {p5, v2, v1}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result v3

    iput v3, p0, Ljavassist/convert/TransformBefore;->newIndex:I

    .line 68
    iput-object p5, p0, Ljavassist/convert/TransformBefore;->constPool:Ljavassist/bytecode/ConstPool;

    .line 71
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "nt":I
    .end local v2    # "ci":I
    :cond_0
    iget-object v0, p0, Ljavassist/convert/TransformBefore;->saveCode:[B

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Ljavassist/convert/TransformBefore;->parameterTypes:[Ljavassist/CtClass;

    invoke-virtual {p0, v0, p5}, Ljavassist/convert/TransformBefore;->makeCode([Ljavassist/CtClass;Ljavassist/bytecode/ConstPool;)V

    .line 74
    :cond_1
    invoke-virtual {p0, p2, p3}, Ljavassist/convert/TransformBefore;->match2(ILjavassist/bytecode/CodeIterator;)I

    move-result v0

    return v0
.end method

.method protected match2(ILjavassist/bytecode/CodeIterator;)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 78
    invoke-virtual {p2, p1}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 79
    iget-object v0, p0, Ljavassist/convert/TransformBefore;->saveCode:[B

    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->insert([B)I

    .line 80
    iget-object v0, p0, Ljavassist/convert/TransformBefore;->loadCode:[B

    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->insert([B)I

    .line 81
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljavassist/bytecode/CodeIterator;->insertGap(I)I

    move-result v0

    .line 82
    .local v0, "p":I
    const/16 v1, 0xb8

    invoke-virtual {p2, v1, v0}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 83
    iget v1, p0, Ljavassist/convert/TransformBefore;->newIndex:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v1, v2}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    .line 84
    iget-object v1, p0, Ljavassist/convert/TransformBefore;->loadCode:[B

    invoke-virtual {p2, v1}, Ljavassist/bytecode/CodeIterator;->insert([B)I

    .line 85
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v1

    return v1
.end method
