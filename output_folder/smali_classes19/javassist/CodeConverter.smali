.class public Ljavassist/CodeConverter;
.super Ljava/lang/Object;
.source "CodeConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/CodeConverter$DefaultArrayAccessReplacementMethodNames;,
        Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;
    }
.end annotation


# instance fields
.field protected transformers:Ljavassist/convert/Transformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    return-void
.end method


# virtual methods
.method protected doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;)V
    .locals 8
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p3, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 548
    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 549
    .local v0, "codeAttr":Ljavassist/bytecode/CodeAttribute;
    if-eqz v0, :cond_a

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 551
    :cond_0
    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .local v1, "t":Ljavassist/convert/Transformer;
    :goto_0
    if-eqz v1, :cond_1

    .line 552
    invoke-virtual {v1, p3, p1, p2}, Ljavassist/convert/Transformer;->initialize(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 551
    invoke-virtual {v1}, Ljavassist/convert/Transformer;->getNext()Ljavassist/convert/Transformer;

    move-result-object v1

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v2

    .line 555
    .local v2, "iterator":Ljavassist/bytecode/CodeIterator;
    :goto_1
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 557
    :try_start_0
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v3

    .line 558
    .local v3, "pos":I
    iget-object v4, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    :goto_2
    move-object v1, v4

    if-eqz v1, :cond_2

    .line 559
    invoke-virtual {v1, p1, v3, v2, p3}, Ljavassist/convert/Transformer;->transform(Ljavassist/CtClass;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/ConstPool;)I

    move-result v4

    move v3, v4

    .line 558
    invoke-virtual {v1}, Ljavassist/convert/Transformer;->getNext()Ljavassist/convert/Transformer;

    move-result-object v4
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 563
    .end local v3    # "pos":I
    :cond_2
    goto :goto_1

    .line 561
    :catch_0
    move-exception v3

    .line 562
    .local v3, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v4, Ljavassist/CannotCompileException;

    invoke-direct {v4, v3}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 566
    .end local v3    # "e":Ljavassist/bytecode/BadBytecode;
    :cond_3
    const/4 v3, 0x0

    .line 567
    .local v3, "locals":I
    const/4 v4, 0x0

    .line 568
    .local v4, "stack":I
    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    :goto_3
    if-eqz v1, :cond_6

    .line 569
    invoke-virtual {v1}, Ljavassist/convert/Transformer;->extraLocals()I

    move-result v5

    .line 570
    .local v5, "s":I
    if-le v5, v3, :cond_4

    .line 571
    move v3, v5

    .line 573
    :cond_4
    invoke-virtual {v1}, Ljavassist/convert/Transformer;->extraStack()I

    move-result v5

    .line 574
    if-le v5, v4, :cond_5

    .line 575
    move v4, v5

    .line 568
    .end local v5    # "s":I
    :cond_5
    invoke-virtual {v1}, Ljavassist/convert/Transformer;->getNext()Ljavassist/convert/Transformer;

    move-result-object v1

    goto :goto_3

    .line 578
    :cond_6
    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    :goto_4
    if-eqz v1, :cond_7

    .line 579
    invoke-virtual {v1}, Ljavassist/convert/Transformer;->clean()V

    .line 578
    invoke-virtual {v1}, Ljavassist/convert/Transformer;->getNext()Ljavassist/convert/Transformer;

    move-result-object v1

    goto :goto_4

    .line 581
    :cond_7
    if-lez v3, :cond_8

    .line 582
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 584
    :cond_8
    if-lez v4, :cond_9

    .line 585
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 588
    :cond_9
    :try_start_1
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v5

    .line 589
    invoke-virtual {p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v6

    .line 588
    invoke-virtual {p2, v5, v6}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_1

    .line 593
    nop

    .line 594
    return-void

    .line 591
    :catch_1
    move-exception v5

    .line 592
    .local v5, "b":Ljavassist/bytecode/BadBytecode;
    new-instance v6, Ljavassist/CannotCompileException;

    invoke-virtual {v5}, Ljavassist/bytecode/BadBytecode;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 550
    .end local v1    # "t":Ljavassist/convert/Transformer;
    .end local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v3    # "locals":I
    .end local v4    # "stack":I
    .end local v5    # "b":Ljavassist/bytecode/BadBytecode;
    :cond_a
    :goto_5
    return-void
.end method

.method public insertAfterMethod(Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 2
    .param p1, "origMethod"    # Ljavassist/CtMethod;
    .param p2, "afterMethod"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 533
    :try_start_0
    new-instance v0, Ljavassist/convert/TransformAfter;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-direct {v0, v1, p1, p2}, Ljavassist/convert/TransformAfter;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    nop

    .line 539
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v1
.end method

.method public insertBeforeMethod(Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 2
    .param p1, "origMethod"    # Ljavassist/CtMethod;
    .param p2, "beforeMethod"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 485
    :try_start_0
    new-instance v0, Ljavassist/convert/TransformBefore;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-direct {v0, v1, p1, p2}, Ljavassist/convert/TransformBefore;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    nop

    .line 491
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v1
.end method

.method public redirectFieldAccess(Ljavassist/CtField;Ljavassist/CtClass;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljavassist/CtField;
    .param p2, "newClass"    # Ljavassist/CtClass;
    .param p3, "newFieldname"    # Ljava/lang/String;

    .line 160
    new-instance v0, Ljavassist/convert/TransformFieldAccess;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 161
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p3}, Ljavassist/convert/TransformFieldAccess;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 163
    return-void
.end method

.method public redirectMethodCall(Ljava/lang/String;Ljavassist/CtMethod;)V
    .locals 2
    .param p1, "oldMethodName"    # Ljava/lang/String;
    .param p2, "newMethod"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 406
    new-instance v0, Ljavassist/convert/TransformCall;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-direct {v0, v1, p1, p2}, Ljavassist/convert/TransformCall;-><init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljavassist/CtMethod;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 408
    return-void
.end method

.method public redirectMethodCall(Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 7
    .param p1, "origMethod"    # Ljavassist/CtMethod;
    .param p2, "substMethod"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "d1":Ljava/lang/String;
    invoke-virtual {p2}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "d2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    invoke-virtual {p1}, Ljavassist/CtMethod;->getModifiers()I

    move-result v2

    .line 373
    .local v2, "mod1":I
    invoke-virtual {p2}, Ljavassist/CtMethod;->getModifiers()I

    move-result v3

    .line 374
    .local v3, "mod2":I
    invoke-static {v2}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v4

    invoke-static {v3}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 375
    invoke-static {v2}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/CtClass;->isInterface()Z

    move-result v4

    .line 377
    invoke-virtual {p2}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v5

    invoke-virtual {v5}, Ljavassist/CtClass;->isInterface()Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 381
    new-instance v4, Ljavassist/convert/TransformCall;

    iget-object v5, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-direct {v4, v5, p1, p2}, Ljavassist/convert/TransformCall;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V

    iput-object v4, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 383
    return-void

    .line 378
    :cond_1
    new-instance v4, Ljavassist/CannotCompileException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke-type mismatch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 379
    invoke-virtual {p2}, Ljavassist/CtMethod;->getLongName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 369
    .end local v2    # "mod1":I
    .end local v3    # "mod2":I
    :cond_2
    new-instance v2, Ljavassist/CannotCompileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signature mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 370
    invoke-virtual {p2}, Ljavassist/CtMethod;->getLongName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public redirectMethodCallToStatic(Ljavassist/CtMethod;Ljavassist/CtMethod;)V
    .locals 2
    .param p1, "origMethod"    # Ljavassist/CtMethod;
    .param p2, "staticMethod"    # Ljavassist/CtMethod;

    .line 442
    new-instance v0, Ljavassist/convert/TransformCallToStatic;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-direct {v0, v1, p1, p2}, Ljavassist/convert/TransformCallToStatic;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtMethod;Ljavassist/CtMethod;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 444
    return-void
.end method

.method public replaceArrayAccess(Ljavassist/CtClass;Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;)V
    .locals 3
    .param p1, "calledClass"    # Ljavassist/CtClass;
    .param p2, "names"    # Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 344
    new-instance v0, Ljavassist/convert/TransformAccessArrayField;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Ljavassist/convert/TransformAccessArrayField;-><init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 345
    return-void
.end method

.method public replaceFieldRead(Ljavassist/CtField;Ljavassist/CtClass;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljavassist/CtField;
    .param p2, "calledClass"    # Ljavassist/CtClass;
    .param p3, "calledMethod"    # Ljava/lang/String;

    .line 200
    new-instance v0, Ljavassist/convert/TransformReadField;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 201
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p3}, Ljavassist/convert/TransformReadField;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 203
    return-void
.end method

.method public replaceFieldWrite(Ljavassist/CtField;Ljavassist/CtClass;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljavassist/CtField;
    .param p2, "calledClass"    # Ljavassist/CtClass;
    .param p3, "calledMethod"    # Ljava/lang/String;

    .line 241
    new-instance v0, Ljavassist/convert/TransformWriteField;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 242
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p3}, Ljavassist/convert/TransformWriteField;-><init>(Ljavassist/convert/Transformer;Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 244
    return-void
.end method

.method public replaceNew(Ljavassist/CtClass;Ljavassist/CtClass;)V
    .locals 4
    .param p1, "oldClass"    # Ljavassist/CtClass;
    .param p2, "newClass"    # Ljavassist/CtClass;

    .line 137
    new-instance v0, Ljavassist/convert/TransformNewClass;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavassist/convert/TransformNewClass;-><init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 139
    return-void
.end method

.method public replaceNew(Ljavassist/CtClass;Ljavassist/CtClass;Ljava/lang/String;)V
    .locals 4
    .param p1, "newClass"    # Ljavassist/CtClass;
    .param p2, "calledClass"    # Ljavassist/CtClass;
    .param p3, "calledMethod"    # Ljava/lang/String;

    .line 111
    new-instance v0, Ljavassist/convert/TransformNew;

    iget-object v1, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p3}, Ljavassist/convert/TransformNew;-><init>(Ljavassist/convert/Transformer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CodeConverter;->transformers:Ljavassist/convert/Transformer;

    .line 113
    return-void
.end method
