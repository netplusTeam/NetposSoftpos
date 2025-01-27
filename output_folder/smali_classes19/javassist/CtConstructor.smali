.class public final Ljavassist/CtConstructor;
.super Ljavassist/CtBehavior;
.source "CtConstructor.java"


# direct methods
.method public constructor <init>(Ljavassist/CtConstructor;Ljavassist/CtClass;Ljavassist/ClassMap;)V
    .locals 2
    .param p1, "src"    # Ljavassist/CtConstructor;
    .param p2, "declaring"    # Ljavassist/CtClass;
    .param p3, "map"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljavassist/bytecode/MethodInfo;

    invoke-direct {p0, v0, p2}, Ljavassist/CtConstructor;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p3}, Ljavassist/CtConstructor;->copy(Ljavassist/CtBehavior;ZLjavassist/ClassMap;)V

    .line 111
    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V
    .locals 0
    .param p1, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p2, "declaring"    # Ljavassist/CtClass;

    .line 46
    invoke-direct {p0, p2, p1}, Ljavassist/CtBehavior;-><init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 47
    return-void
.end method

.method public constructor <init>([Ljavassist/CtClass;Ljavassist/CtClass;)V
    .locals 4
    .param p1, "parameters"    # [Ljavassist/CtClass;
    .param p2, "declaring"    # Ljavassist/CtClass;

    .line 65
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljavassist/bytecode/MethodInfo;

    invoke-direct {p0, v0, p2}, Ljavassist/CtConstructor;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    .line 66
    invoke-virtual {p2}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 67
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->ofConstructor([Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "desc":Ljava/lang/String;
    new-instance v2, Ljavassist/bytecode/MethodInfo;

    const-string v3, "<init>"

    invoke-direct {v2, v0, v3, v1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    .line 69
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljavassist/CtConstructor;->setModifiers(I)V

    .line 70
    return-void
.end method

.method private getSuperclassName()Ljava/lang/String;
    .locals 2

    .line 186
    iget-object v0, p0, Ljavassist/CtConstructor;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 187
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static removeConsCall(Ljavassist/bytecode/CodeAttribute;)V
    .locals 9
    .param p0, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 389
    .local v0, "iterator":Ljavassist/bytecode/CodeIterator;
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->skipConstructor()I

    move-result v1

    .line 390
    .local v1, "pos":I
    if-ltz v1, :cond_2

    .line 391
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v2

    .line 392
    .local v2, "mref":I
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "desc":Ljava/lang/String;
    invoke-static {v3}, Ljavassist/bytecode/Descriptor;->numOfParameters(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 394
    .local v4, "num":I
    const/4 v5, 0x3

    const/4 v6, 0x0

    if-le v4, v5, :cond_0

    .line 395
    add-int/lit8 v5, v4, -0x3

    invoke-virtual {v0, v1, v5, v6}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v5

    iget v5, v5, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    move v1, v5

    .line 397
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "pos":I
    .local v5, "pos":I
    const/16 v7, 0x57

    invoke-virtual {v0, v7, v1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 398
    invoke-virtual {v0, v6, v5}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 399
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v6, v1}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 400
    new-instance v1, Ljavassist/bytecode/Descriptor$Iterator;

    invoke-direct {v1, v3}, Ljavassist/bytecode/Descriptor$Iterator;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, "it":Ljavassist/bytecode/Descriptor$Iterator;
    :goto_0
    invoke-virtual {v1}, Ljavassist/bytecode/Descriptor$Iterator;->next()I

    .line 403
    invoke-virtual {v1}, Ljavassist/bytecode/Descriptor$Iterator;->isParameter()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 404
    invoke-virtual {v1}, Ljavassist/bytecode/Descriptor$Iterator;->is2byte()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x58

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos":I
    .local v8, "pos":I
    invoke-virtual {v0, v6, v5}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v8

    goto :goto_0

    .line 413
    .end local v1    # "it":Ljavassist/bytecode/Descriptor$Iterator;
    .end local v2    # "mref":I
    .end local v3    # "desc":Ljava/lang/String;
    .end local v4    # "num":I
    .end local v8    # "pos":I
    :cond_2
    nop

    .line 414
    return-void

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public callsSuper()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 197
    .local v0, "codeAttr":Ljavassist/bytecode/CodeAttribute;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v2

    .line 200
    .local v2, "it":Ljavassist/bytecode/CodeIterator;
    :try_start_0
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor()I

    move-result v3
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v3, "index":I
    if-ltz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 203
    .end local v3    # "index":I
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v3, Ljavassist/CannotCompileException;

    invoke-direct {v3, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 208
    .end local v1    # "e":Ljavassist/bytecode/BadBytecode;
    .end local v2    # "it":Ljavassist/bytecode/CodeIterator;
    :cond_1
    return v1
.end method

.method public getLongName()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtConstructor;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavassist/CtConstructor;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 137
    :cond_0
    const-string v1, ".<clinit>()"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->isStaticInitializer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "<clinit>"

    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Ljavassist/CtConstructor;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStartPosOfBody(Ljavassist/bytecode/CodeAttribute;)I
    .locals 3
    .param p1, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 298
    .local v0, "ci":Ljavassist/bytecode/CodeIterator;
    :try_start_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->skipConstructor()I

    .line 299
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v1
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public insertBeforeBody(Ljava/lang/String;)V
    .locals 9
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Ljavassist/CtConstructor;->declaringClass:Ljavassist/CtClass;

    .line 260
    .local v0, "cc":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 261
    invoke-virtual {p0}, Ljavassist/CtConstructor;->isClassInitializer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    iget-object v1, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    .line 265
    .local v1, "ca":Ljavassist/bytecode/CodeAttribute;
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v2

    .line 266
    .local v2, "iterator":Ljavassist/bytecode/CodeIterator;
    new-instance v3, Ljavassist/bytecode/Bytecode;

    iget-object v4, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    .line 267
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v5

    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 268
    .local v3, "b":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavassist/bytecode/Bytecode;->setStackDepth(I)V

    .line 269
    new-instance v4, Ljavassist/compiler/Javac;

    invoke-direct {v4, v3, v0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 271
    .local v4, "jv":Ljavassist/compiler/Javac;
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtConstructor;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    .line 272
    invoke-virtual {v4, p1}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v5

    invoke-virtual {v1, v5}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 274
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v5

    invoke-virtual {v1, v5}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 275
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->skipConstructor()I

    .line 276
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavassist/bytecode/CodeIterator;->insertEx([B)I

    move-result v5

    .line 277
    .local v5, "pos":I
    invoke-virtual {v3}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 278
    iget-object v6, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v7

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v5    # "pos":I
    nop

    .line 289
    return-void

    .line 286
    :catch_0
    move-exception v5

    .line 287
    .local v5, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v6, Ljavassist/CannotCompileException;

    invoke-direct {v6, v5}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 283
    .end local v5    # "e":Ljavassist/bytecode/BadBytecode;
    :catch_1
    move-exception v5

    .line 284
    .local v5, "e":Ljavassist/compiler/CompileError;
    new-instance v6, Ljavassist/CannotCompileException;

    invoke-direct {v6, v5}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v6

    .line 280
    .end local v5    # "e":Ljavassist/compiler/CompileError;
    :catch_2
    move-exception v5

    .line 281
    .local v5, "e":Ljavassist/NotFoundException;
    new-instance v6, Ljavassist/CannotCompileException;

    invoke-direct {v6, v5}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v6

    .line 262
    .end local v1    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v3    # "b":Ljavassist/bytecode/Bytecode;
    .end local v4    # "jv":Ljavassist/compiler/Javac;
    .end local v5    # "e":Ljavassist/NotFoundException;
    :cond_0
    new-instance v1, Ljavassist/CannotCompileException;

    const-string v2, "class initializer"

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isClassInitializer()Z
    .locals 1

    .line 124
    iget-object v0, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->isStaticInitializer()Z

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    .line 117
    iget-object v0, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->isConstructor()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 10

    .line 162
    invoke-virtual {p0}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 163
    .local v0, "ca":Ljavassist/bytecode/CodeAttribute;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    return v1

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 168
    .local v2, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v3

    .line 171
    .local v3, "it":Ljavassist/bytecode/CodeIterator;
    :try_start_0
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v4

    .line 172
    .local v4, "op0":I
    const/16 v5, 0xb1

    if-eq v4, v5, :cond_2

    const/16 v6, 0x2a

    if-ne v4, v6, :cond_1

    .line 174
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v6

    move v7, v6

    .local v7, "pos":I
    invoke-virtual {v3, v6}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v6

    const/16 v8, 0xb7

    if-ne v6, v8, :cond_1

    .line 175
    invoke-direct {p0}, Ljavassist/CtConstructor;->getSuperclassName()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v7, 0x1

    .line 176
    invoke-virtual {v3, v8}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v8

    .line 175
    invoke-virtual {v2, v6, v8}, Ljavassist/bytecode/ConstPool;->isConstructor(Ljava/lang/String;I)I

    move-result v6

    move v8, v6

    .local v8, "desc":I
    if-eqz v6, :cond_1

    const-string v6, "()V"

    .line 177
    invoke-virtual {v2, v8}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 178
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v6

    invoke-virtual {v3, v6}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 179
    invoke-virtual {v3}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    goto :goto_0

    .end local v7    # "pos":I
    .end local v8    # "desc":I
    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 172
    :goto_1
    return v1

    .line 181
    .end local v4    # "op0":I
    :catch_0
    move-exception v4

    .line 182
    return v1
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 222
    if-nez p1, :cond_1

    .line 223
    invoke-virtual {p0}, Ljavassist/CtConstructor;->isClassInitializer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string p1, ";"

    goto :goto_0

    .line 226
    :cond_0
    const-string p1, "super();"

    .line 228
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljavassist/CtBehavior;->setBody(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setBody(Ljavassist/CtConstructor;Ljavassist/ClassMap;)V
    .locals 4
    .param p1, "src"    # Ljavassist/CtConstructor;
    .param p2, "map"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 246
    iget-object v0, p1, Ljavassist/CtConstructor;->declaringClass:Ljavassist/CtClass;

    iget-object v1, p1, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    iget-object v2, p0, Ljavassist/CtConstructor;->declaringClass:Ljavassist/CtClass;

    iget-object v3, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-static {v0, v1, v2, v3, p2}, Ljavassist/CtConstructor;->setBody0(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/ClassMap;)V

    .line 248
    return-void
.end method

.method public toMethod(Ljava/lang/String;Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/CtConstructor;->toMethod(Ljava/lang/String;Ljavassist/CtClass;Ljavassist/ClassMap;)Ljavassist/CtMethod;

    move-result-object v0

    return-object v0
.end method

.method public toMethod(Ljava/lang/String;Ljavassist/CtClass;Ljavassist/ClassMap;)Ljavassist/CtMethod;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "declaring"    # Ljavassist/CtClass;
    .param p3, "map"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 363
    new-instance v0, Ljavassist/CtMethod;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    .line 364
    .local v0, "method":Ljavassist/CtMethod;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p3}, Ljavassist/CtMethod;->copy(Ljavassist/CtBehavior;ZLjavassist/ClassMap;)V

    .line 365
    invoke-virtual {p0}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v0}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    .line 367
    .local v1, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v2

    .line 368
    .local v2, "ca":Ljavassist/bytecode/CodeAttribute;
    if-eqz v2, :cond_0

    .line 369
    invoke-static {v2}, Ljavassist/CtConstructor;->removeConsCall(Ljavassist/bytecode/CodeAttribute;)V

    .line 371
    :try_start_0
    iget-object v3, p0, Ljavassist/CtConstructor;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v4

    .line 372
    invoke-virtual {p2}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v5

    .line 371
    invoke-virtual {v3, v4, v5}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 374
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v4, Ljavassist/CannotCompileException;

    invoke-direct {v4, v3}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 380
    .end local v1    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v2    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v3    # "e":Ljavassist/bytecode/BadBytecode;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Ljavassist/CtMethod;->setName(Ljava/lang/String;)V

    .line 381
    return-object v0
.end method
