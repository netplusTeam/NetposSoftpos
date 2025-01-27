.class public abstract Ljavassist/CtBehavior;
.super Ljavassist/CtMember;
.source "CtBehavior.java"


# instance fields
.field protected methodInfo:Ljavassist/bytecode/MethodInfo;


# direct methods
.method protected constructor <init>(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 0
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "minfo"    # Ljavassist/bytecode/MethodInfo;

    .line 57
    invoke-direct {p0, p1}, Ljavassist/CtMember;-><init>(Ljavassist/CtClass;)V

    .line 58
    iput-object p2, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    .line 59
    return-void
.end method

.method private addParameter2(ILjavassist/CtClass;Ljava/lang/String;)V
    .locals 9
    .param p1, "where"    # I
    .param p2, "type"    # Ljavassist/CtClass;
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 677
    .local v0, "ca":Ljavassist/bytecode/CodeAttribute;
    if-eqz v0, :cond_4

    .line 678
    const/4 v1, 0x1

    .line 679
    .local v1, "size":I
    const/16 v2, 0x4c

    .line 680
    .local v2, "typeDesc":C
    const/4 v3, 0x0

    .line 681
    .local v3, "classInfo":I
    invoke-virtual {p2}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    move-object v4, p2

    check-cast v4, Ljavassist/CtPrimitiveType;

    .line 683
    .local v4, "cpt":Ljavassist/CtPrimitiveType;
    invoke-virtual {v4}, Ljavassist/CtPrimitiveType;->getDataSize()I

    move-result v1

    .line 684
    invoke-virtual {v4}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v2

    .line 685
    .end local v4    # "cpt":Ljavassist/CtPrimitiveType;
    goto :goto_0

    .line 687
    :cond_0
    iget-object v4, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v3

    .line 689
    :goto_0
    invoke-virtual {v0, p1, v1}, Ljavassist/bytecode/CodeAttribute;->insertLocalVar(II)V

    .line 690
    nop

    .line 691
    const-string v4, "LocalVariableTable"

    invoke-virtual {v0, v4}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/LocalVariableAttribute;

    .line 692
    .local v4, "va":Ljavassist/bytecode/LocalVariableAttribute;
    if-eqz v4, :cond_1

    .line 693
    invoke-virtual {v4, p1, v1}, Ljavassist/bytecode/LocalVariableAttribute;->shiftIndex(II)V

    .line 695
    :cond_1
    nop

    .line 696
    const-string v5, "LocalVariableTypeTable"

    invoke-virtual {v0, v5}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v5

    check-cast v5, Ljavassist/bytecode/LocalVariableTypeAttribute;

    .line 697
    .local v5, "lvta":Ljavassist/bytecode/LocalVariableTypeAttribute;
    if-eqz v5, :cond_2

    .line 698
    invoke-virtual {v5, p1, v1}, Ljavassist/bytecode/LocalVariableTypeAttribute;->shiftIndex(II)V

    .line 700
    :cond_2
    const-string v6, "StackMapTable"

    invoke-virtual {v0, v6}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/StackMapTable;

    .line 701
    .local v6, "smt":Ljavassist/bytecode/StackMapTable;
    if-eqz v6, :cond_3

    .line 702
    invoke-static {v2}, Ljavassist/bytecode/StackMapTable;->typeTagOf(C)I

    move-result v7

    invoke-virtual {v6, p1, v7, v3}, Ljavassist/bytecode/StackMapTable;->insertLocal(III)V

    .line 704
    :cond_3
    const-string v7, "StackMap"

    invoke-virtual {v0, v7}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v7

    check-cast v7, Ljavassist/bytecode/StackMap;

    .line 705
    .local v7, "sm":Ljavassist/bytecode/StackMap;
    if-eqz v7, :cond_4

    .line 706
    invoke-static {v2}, Ljavassist/bytecode/StackMapTable;->typeTagOf(C)I

    move-result v8

    invoke-virtual {v7, p1, v8, v3}, Ljavassist/bytecode/StackMap;->insertLocal(III)V

    .line 708
    .end local v1    # "size":I
    .end local v2    # "typeDesc":C
    .end local v3    # "classInfo":I
    .end local v4    # "va":Ljavassist/bytecode/LocalVariableAttribute;
    .end local v5    # "lvta":Ljavassist/bytecode/LocalVariableTypeAttribute;
    .end local v6    # "smt":Ljavassist/bytecode/StackMapTable;
    .end local v7    # "sm":Ljavassist/bytecode/StackMap;
    :cond_4
    return-void
.end method

.method private getAnnotations(Z)[Ljava/lang/Object;
    .locals 4
    .param p1, "ignoreNotFound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 260
    .local v0, "mi":Ljavassist/bytecode/MethodInfo;
    nop

    .line 261
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 262
    .local v1, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 263
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v2}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AnnotationsAttribute;

    .line 264
    .local v2, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 265
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    .line 264
    invoke-static {p1, v3, v1, v2}, Ljavassist/CtClassType;->toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private insertAfterAdvice(Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;I)I
    .locals 3
    .param p1, "code"    # Ljavassist/bytecode/Bytecode;
    .param p2, "jv"    # Ljavassist/compiler/Javac;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p5, "rtype"    # Ljavassist/CtClass;
    .param p6, "varNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 981
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    .line 982
    .local v0, "pc":I
    sget-object v1, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne p5, v1, :cond_0

    .line 983
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 984
    invoke-virtual {p1, p6}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 985
    invoke-virtual {p2, p3}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 986
    const/16 v2, 0xb1

    invoke-virtual {p1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 987
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 988
    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    goto :goto_0

    .line 991
    :cond_0
    invoke-virtual {p1, p6, p5}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 992
    invoke-virtual {p2, p3}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p1, p6, p5}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 994
    invoke-virtual {p5}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 995
    move-object v1, p5

    check-cast v1, Ljavassist/CtPrimitiveType;

    invoke-virtual {v1}, Ljavassist/CtPrimitiveType;->getReturnOp()I

    move-result v1

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 997
    :cond_1
    const/16 v1, 0xb0

    invoke-virtual {p1, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1000
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private insertAfterHandler(ZLjavassist/bytecode/Bytecode;Ljavassist/CtClass;ILjavassist/compiler/Javac;Ljava/lang/String;)I
    .locals 7
    .param p1, "asFinally"    # Z
    .param p2, "b"    # Ljavassist/bytecode/Bytecode;
    .param p3, "rtype"    # Ljavassist/CtClass;
    .param p4, "returnVarNo"    # I
    .param p5, "javac"    # Ljavassist/compiler/Javac;
    .param p6, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1043
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1044
    return v0

    .line 1046
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v1

    .line 1047
    .local v1, "var":I
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljavassist/bytecode/Bytecode;->incMaxLocals(I)V

    .line 1048
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v3

    .line 1049
    .local v3, "pc":I
    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 1050
    invoke-virtual {p3}, Ljavassist/CtClass;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1051
    move-object v4, p3

    check-cast v4, Ljavassist/CtPrimitiveType;

    invoke-virtual {v4}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v4

    .line 1052
    .local v4, "c":C
    const/16 v5, 0x44

    if-ne v4, v5, :cond_1

    .line 1053
    const-wide/16 v5, 0x0

    invoke-virtual {p2, v5, v6}, Ljavassist/bytecode/Bytecode;->addDconst(D)V

    .line 1054
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addDstore(I)V

    goto :goto_0

    .line 1056
    :cond_1
    const/16 v5, 0x46

    if-ne v4, v5, :cond_2

    .line 1057
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addFconst(F)V

    .line 1058
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addFstore(I)V

    goto :goto_0

    .line 1060
    :cond_2
    const/16 v5, 0x4a

    if-ne v4, v5, :cond_3

    .line 1061
    const-wide/16 v5, 0x0

    invoke-virtual {p2, v5, v6}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    .line 1062
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addLstore(I)V

    goto :goto_0

    .line 1064
    :cond_3
    const/16 v5, 0x56

    if-ne v4, v5, :cond_4

    .line 1065
    invoke-virtual {p2, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1066
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    goto :goto_0

    .line 1069
    :cond_4
    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1070
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addIstore(I)V

    .line 1072
    .end local v4    # "c":C
    :goto_0
    goto :goto_1

    .line 1074
    :cond_5
    invoke-virtual {p2, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1075
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 1078
    :goto_1
    invoke-virtual {p5, p6}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1080
    const/16 v0, 0xbf

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1081
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v0

    sub-int/2addr v0, v3

    return v0
.end method

.method private insertBefore(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "rebuild"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 772
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 773
    .local v0, "cc":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 774
    iget-object v1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    .line 775
    .local v1, "ca":Ljavassist/bytecode/CodeAttribute;
    if-eqz v1, :cond_3

    .line 778
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v2

    .line 779
    .local v2, "iterator":Ljavassist/bytecode/CodeIterator;
    new-instance v3, Ljavassist/compiler/Javac;

    invoke-direct {v3, v0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 781
    .local v3, "jv":Ljavassist/compiler/Javac;
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v4

    .line 782
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v5

    .line 781
    invoke-virtual {v3, v4, v5}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    move-result v4

    .line 783
    .local v4, "nvars":I
    invoke-virtual {v3, v1, v4}, Ljavassist/compiler/Javac;->recordParamNames(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 784
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 785
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getReturnType0()Ljavassist/CtClass;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    .line 786
    invoke-virtual {v3, p1}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v3}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v5

    .line 788
    .local v5, "b":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v5}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v6

    .line 789
    .local v6, "stack":I
    invoke-virtual {v5}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v7

    .line 791
    .local v7, "locals":I
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v8

    if-le v6, v8, :cond_0

    .line 792
    invoke-virtual {v1, v6}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 794
    :cond_0
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 795
    invoke-virtual {v1, v7}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 797
    :cond_1
    invoke-virtual {v5}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljavassist/bytecode/CodeIterator;->insertEx([B)I

    move-result v8

    .line 798
    .local v8, "pos":I
    invoke-virtual {v5}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 799
    if-eqz p2, :cond_2

    .line 800
    iget-object v9, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v10

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    .end local v4    # "nvars":I
    .end local v5    # "b":Ljavassist/bytecode/Bytecode;
    .end local v6    # "stack":I
    .end local v7    # "locals":I
    .end local v8    # "pos":I
    :cond_2
    nop

    .line 811
    return-void

    .line 808
    :catch_0
    move-exception v4

    .line 809
    .local v4, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v4}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 805
    .end local v4    # "e":Ljavassist/bytecode/BadBytecode;
    :catch_1
    move-exception v4

    .line 806
    .local v4, "e":Ljavassist/compiler/CompileError;
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v4}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v5

    .line 802
    .end local v4    # "e":Ljavassist/compiler/CompileError;
    :catch_2
    move-exception v4

    .line 803
    .local v4, "e":Ljavassist/NotFoundException;
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v4}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v5

    .line 776
    .end local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v3    # "jv":Ljavassist/compiler/Javac;
    .end local v4    # "e":Ljavassist/NotFoundException;
    :cond_3
    new-instance v2, Ljavassist/CannotCompileException;

    const-string v3, "no method body"

    invoke-direct {v2, v3}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private insertGoto(Ljavassist/bytecode/CodeIterator;II)V
    .locals 9
    .param p1, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p2, "subr"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1009
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->setMark(I)V

    .line 1011
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 1012
    add-int/lit8 v1, p2, 0x2

    sub-int/2addr v1, p3

    const/16 v2, 0x7fff

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1013
    .local v1, "wide":Z
    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1014
    .local v5, "len":I
    :goto_1
    invoke-virtual {p1, p3, v5, v0}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v6

    .line 1015
    .local v6, "gap":Ljavassist/bytecode/CodeIterator$Gap;
    iget v7, v6, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    iget v8, v6, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v5

    .line 1016
    .end local p3    # "pos":I
    .local v7, "pos":I
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->getMark()I

    move-result p3

    sub-int/2addr p3, v7

    .line 1017
    .local p3, "offset":I
    const/16 v8, 0xc8

    if-eqz v1, :cond_2

    .line 1018
    invoke-virtual {p1, v8, v7}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 1019
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, p3, v0}, Ljavassist/bytecode/CodeIterator;->write32bit(II)V

    goto :goto_2

    .line 1021
    :cond_2
    if-gt p3, v2, :cond_3

    .line 1022
    const/16 v0, 0xa7

    invoke-virtual {p1, v0, v7}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 1023
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, p3, v0}, Ljavassist/bytecode/CodeIterator;->write16bit(II)V

    goto :goto_2

    .line 1026
    :cond_3
    iget v2, v6, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    if-ge v2, v3, :cond_4

    .line 1027
    iget v2, v6, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    invoke-virtual {p1, v2, v4, v0}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v0

    .line 1028
    .local v0, "gap2":Ljavassist/bytecode/CodeIterator$Gap;
    iget v2, v0, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    iget v4, v0, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    add-int/2addr v2, v4

    iget v4, v6, Ljavassist/bytecode/CodeIterator$Gap;->length:I

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    move v7, v2

    .line 1031
    .end local v0    # "gap2":Ljavassist/bytecode/CodeIterator$Gap;
    :cond_4
    invoke-virtual {p1, v8, v7}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 1032
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->getMark()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {p1, v0, v2}, Ljavassist/bytecode/CodeIterator;->write32bit(II)V

    .line 1034
    :goto_2
    return-void
.end method

.method static setBody0(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/ClassMap;)V
    .locals 3
    .param p0, "srcClass"    # Ljavassist/CtClass;
    .param p1, "srcInfo"    # Ljavassist/bytecode/MethodInfo;
    .param p2, "destClass"    # Ljavassist/CtClass;
    .param p3, "destInfo"    # Ljavassist/bytecode/MethodInfo;
    .param p4, "map"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 485
    invoke-virtual {p2}, Ljavassist/CtClass;->checkModify()V

    .line 487
    new-instance v0, Ljavassist/ClassMap;

    invoke-direct {v0, p4}, Ljavassist/ClassMap;-><init>(Ljavassist/ClassMap;)V

    move-object p4, v0

    .line 488
    invoke-virtual {p0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljavassist/ClassMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 490
    :try_start_0
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 491
    .local v0, "cattr":Ljavassist/bytecode/CodeAttribute;
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 493
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v0, v1, p4}, Ljavassist/bytecode/CodeAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/CodeAttribute;

    .line 494
    .local v2, "ca":Ljavassist/bytecode/CodeAttribute;
    invoke-virtual {p3, v2}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V
    :try_end_0
    .catch Ljavassist/bytecode/CodeAttribute$RuntimeCopyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v0    # "cattr":Ljavassist/bytecode/CodeAttribute;
    .end local v1    # "cp":Ljavassist/bytecode/ConstPool;
    .end local v2    # "ca":Ljavassist/bytecode/CodeAttribute;
    :cond_0
    nop

    .line 504
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0x401

    invoke-virtual {p3, v0}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 506
    invoke-virtual {p2}, Ljavassist/CtClass;->rebuildClassFile()V

    .line 507
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljavassist/bytecode/CodeAttribute$RuntimeCopyException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addCatch(Ljava/lang/String;Ljavassist/CtClass;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "exceptionType"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1147
    const-string v0, "$e"

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/CtBehavior;->addCatch(Ljava/lang/String;Ljavassist/CtClass;Ljava/lang/String;)V

    .line 1148
    return-void
.end method

.method public addCatch(Ljava/lang/String;Ljavassist/CtClass;Ljava/lang/String;)V
    .locals 18
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "exceptionType"    # Ljavassist/CtClass;
    .param p3, "exceptionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1166
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 1167
    .local v3, "cc":Ljavassist/CtClass;
    invoke-virtual {v3}, Ljavassist/CtClass;->checkModify()V

    .line 1168
    iget-object v0, v1, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    .line 1169
    .local v4, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v0, v1, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v5

    .line 1170
    .local v5, "ca":Ljavassist/bytecode/CodeAttribute;
    invoke-virtual {v5}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v6

    .line 1171
    .local v6, "iterator":Ljavassist/bytecode/CodeIterator;
    new-instance v0, Ljavassist/bytecode/Bytecode;

    invoke-virtual {v5}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v7

    invoke-virtual {v5}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v8

    invoke-direct {v0, v4, v7, v8}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    move-object v7, v0

    .line 1172
    .local v7, "b":Ljavassist/bytecode/Bytecode;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljavassist/bytecode/Bytecode;->setStackDepth(I)V

    .line 1173
    new-instance v0, Ljavassist/compiler/Javac;

    invoke-direct {v0, v7, v3}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    move-object v8, v0

    .line 1175
    .local v8, "jv":Ljavassist/compiler/Javac;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v0

    .line 1176
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v9

    .line 1175
    invoke-virtual {v8, v0, v9}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_c

    .line 1177
    move-object/from16 v9, p3

    :try_start_1
    invoke-virtual {v8, v2, v9}, Ljavassist/compiler/Javac;->recordVariable(Ljavassist/CtClass;Ljava/lang/String;)I

    move-result v0

    .line 1178
    .local v0, "var":I
    invoke-virtual {v7, v0}, Ljavassist/bytecode/Bytecode;->addAstore(I)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljavassist/compiler/CompileError; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_9

    .line 1179
    move-object/from16 v10, p1

    :try_start_2
    invoke-virtual {v8, v10}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v11

    .line 1182
    .local v11, "stack":I
    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v12

    .line 1184
    .local v12, "locals":I
    invoke-virtual {v5}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v13
    :try_end_2
    .catch Ljavassist/NotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavassist/compiler/CompileError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_2 .. :try_end_2} :catch_6

    if-le v11, v13, :cond_0

    .line 1185
    :try_start_3
    invoke-virtual {v5, v11}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V
    :try_end_3
    .catch Ljavassist/NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavassist/compiler/CompileError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1202
    .end local v0    # "var":I
    .end local v11    # "stack":I
    .end local v12    # "locals":I
    :catch_0
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_2

    .line 1200
    :catch_1
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_4

    .line 1197
    :catch_2
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_6

    .line 1187
    .restart local v0    # "var":I
    .restart local v11    # "stack":I
    .restart local v12    # "locals":I
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v5}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v13
    :try_end_4
    .catch Ljavassist/NotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavassist/compiler/CompileError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_4 .. :try_end_4} :catch_6

    if-le v12, v13, :cond_1

    .line 1188
    :try_start_5
    invoke-virtual {v5, v12}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V
    :try_end_5
    .catch Ljavassist/NotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavassist/compiler/CompileError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_5 .. :try_end_5} :catch_0

    .line 1190
    :cond_1
    :try_start_6
    invoke-virtual {v6}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v13

    .line 1191
    .local v13, "len":I
    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v14

    invoke-virtual {v6, v14}, Ljavassist/bytecode/CodeIterator;->append([B)I

    move-result v14

    .line 1192
    .local v14, "pos":I
    invoke-virtual {v5}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v15

    move/from16 v16, v0

    .end local v0    # "var":I
    .local v16, "var":I
    invoke-virtual {v1, v5}, Ljavassist/CtBehavior;->getStartPosOfBody(Ljavassist/bytecode/CodeAttribute;)I

    move-result v0
    :try_end_6
    .catch Ljavassist/NotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljavassist/compiler/CompileError; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_6 .. :try_end_6} :catch_6

    .line 1193
    move-object/from16 v17, v5

    .end local v5    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v17, "ca":Ljavassist/bytecode/CodeAttribute;
    :try_start_7
    invoke-virtual {v4, v2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljavassist/CtClass;)I

    move-result v5

    .line 1192
    invoke-virtual {v15, v0, v13, v13, v5}, Ljavassist/bytecode/ExceptionTable;->add(IIII)V

    .line 1194
    invoke-virtual {v7}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v0

    invoke-virtual {v6, v0, v14}, Ljavassist/bytecode/CodeIterator;->append(Ljavassist/bytecode/ExceptionTable;I)V

    .line 1195
    iget-object v0, v1, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v5

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v15

    invoke-virtual {v0, v5, v15}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_7
    .catch Ljavassist/NotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljavassist/compiler/CompileError; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_7 .. :try_end_7} :catch_3

    .line 1204
    .end local v11    # "stack":I
    .end local v12    # "locals":I
    .end local v13    # "len":I
    .end local v14    # "pos":I
    .end local v16    # "var":I
    nop

    .line 1205
    return-void

    .line 1202
    :catch_3
    move-exception v0

    goto :goto_2

    .line 1200
    :catch_4
    move-exception v0

    goto :goto_4

    .line 1197
    :catch_5
    move-exception v0

    goto :goto_6

    .line 1202
    .end local v17    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v5    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_6
    move-exception v0

    goto :goto_1

    .line 1200
    :catch_7
    move-exception v0

    goto :goto_3

    .line 1197
    :catch_8
    move-exception v0

    goto :goto_5

    .line 1202
    :catch_9
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_1

    .line 1200
    :catch_a
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_3

    .line 1197
    :catch_b
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_5

    .line 1202
    :catch_c
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v9, p3

    :goto_1
    move-object/from16 v17, v5

    .line 1203
    .end local v5    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    .restart local v17    # "ca":Ljavassist/bytecode/CodeAttribute;
    :goto_2
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1200
    .end local v0    # "e":Ljavassist/bytecode/BadBytecode;
    .end local v17    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v5    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_d
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v9, p3

    :goto_3
    move-object/from16 v17, v5

    .line 1201
    .end local v5    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v0, "e":Ljavassist/compiler/CompileError;
    .restart local v17    # "ca":Ljavassist/bytecode/CodeAttribute;
    :goto_4
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v5

    .line 1197
    .end local v0    # "e":Ljavassist/compiler/CompileError;
    .end local v17    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v5    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_e
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v9, p3

    :goto_5
    move-object/from16 v17, v5

    .line 1198
    .end local v5    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v0, "e":Ljavassist/NotFoundException;
    .restart local v17    # "ca":Ljavassist/bytecode/CodeAttribute;
    :goto_6
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v5
.end method

.method public addLocalVariable(Ljava/lang/String;Ljavassist/CtClass;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 615
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 616
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    .line 617
    .local v1, "ca":Ljavassist/bytecode/CodeAttribute;
    if-eqz v1, :cond_1

    .line 620
    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/LocalVariableAttribute;

    .line 622
    .local v2, "va":Ljavassist/bytecode/LocalVariableAttribute;
    if-nez v2, :cond_0

    .line 623
    new-instance v3, Ljavassist/bytecode/LocalVariableAttribute;

    invoke-direct {v3, v0}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    move-object v2, v3

    .line 624
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_0
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v3

    .line 628
    .local v3, "maxLocals":I
    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->of(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v10

    .line 629
    .local v10, "desc":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getCodeLength()I

    move-result v6

    .line 630
    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v10}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v8

    .line 629
    move-object v4, v2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Ljavassist/bytecode/LocalVariableAttribute;->addEntry(IIIII)V

    .line 631
    invoke-static {v10}, Ljavassist/bytecode/Descriptor;->dataSize(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 632
    return-void

    .line 618
    .end local v2    # "va":Ljavassist/bytecode/LocalVariableAttribute;
    .end local v3    # "maxLocals":I
    .end local v10    # "desc":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljavassist/CannotCompileException;

    const-string v3, "no method body"

    invoke-direct {v2, v3}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addParameter(Ljavassist/CtClass;)V
    .locals 5
    .param p1, "type"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 660
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "desc":Ljava/lang/String;
    invoke-static {p1, v0}, Ljavassist/bytecode/Descriptor;->appendParameter(Ljavassist/CtClass;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "desc2":Ljava/lang/String;
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 664
    .local v2, "offset":I
    :try_start_0
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->paramSize(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0, v3, p1, v0}, Ljavassist/CtBehavior;->addParameter2(ILjavassist/CtClass;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    nop

    .line 670
    iget-object v3, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v3, v1}, Ljavassist/bytecode/MethodInfo;->setDescriptor(Ljava/lang/String;)V

    .line 671
    return-void

    .line 666
    :catch_0
    move-exception v3

    .line 667
    .local v3, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v4, Ljavassist/CannotCompileException;

    invoke-direct {v4, v3}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method copy(Ljavassist/CtBehavior;ZLjavassist/ClassMap;)V
    .locals 10
    .param p1, "src"    # Ljavassist/CtBehavior;
    .param p2, "isCons"    # Z
    .param p3, "map"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 68
    .local v0, "declaring":Ljavassist/CtClass;
    iget-object v1, p1, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    .line 69
    .local v1, "srcInfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {p1}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v2

    .line 70
    .local v2, "srcClass":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 72
    .local v3, "cp":Ljavassist/bytecode/ConstPool;
    new-instance v4, Ljavassist/ClassMap;

    invoke-direct {v4, p3}, Ljavassist/ClassMap;-><init>(Ljavassist/ClassMap;)V

    move-object p3, v4

    .line 73
    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Ljavassist/ClassMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, "patch":Z
    :try_start_0
    invoke-virtual {v2}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v5

    .line 77
    .local v5, "srcSuper":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v6

    .line 78
    .local v6, "destSuper":Ljavassist/CtClass;
    const/4 v7, 0x0

    .line 79
    .local v7, "destSuperName":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 80
    invoke-virtual {v5}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "srcSuperName":Ljava/lang/String;
    invoke-virtual {v6}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 82
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 83
    const-string v9, "java.lang.Object"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 84
    const/4 v4, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p3, v8, v7}, Ljavassist/ClassMap;->putIfNone(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v8    # "srcSuperName":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v8, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v9, v1, p3}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/Map;)V

    iput-object v8, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    .line 91
    if-eqz p2, :cond_2

    if-eqz v4, :cond_2

    .line 92
    invoke-virtual {v8, v7}, Ljavassist/bytecode/MethodInfo;->setSuperclass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v4    # "patch":Z
    .end local v5    # "srcSuper":Ljavassist/CtClass;
    .end local v6    # "destSuper":Ljavassist/CtClass;
    .end local v7    # "destSuperName":Ljava/lang/String;
    :cond_2
    nop

    .line 100
    return-void

    .line 97
    :catch_0
    move-exception v4

    .line 98
    .local v4, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v4}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 94
    .end local v4    # "e":Ljavassist/bytecode/BadBytecode;
    :catch_1
    move-exception v4

    .line 95
    .local v4, "e":Ljavassist/NotFoundException;
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v4}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v5
.end method

.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 104
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 215
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 216
    .local v0, "mi":Ljavassist/bytecode/MethodInfo;
    nop

    .line 217
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 218
    .local v1, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 219
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v2}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AnnotationsAttribute;

    .line 220
    .local v2, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 221
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    .line 220
    invoke-static {p1, v3, v1, v2}, Ljavassist/CtClassType;->getAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getAnnotations()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/CtBehavior;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 523
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    .line 524
    .local v0, "ai":Ljavassist/bytecode/AttributeInfo;
    if-nez v0, :cond_0

    .line 525
    const/4 v1, 0x0

    return-object v1

    .line 526
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/AttributeInfo;->get()[B

    move-result-object v1

    return-object v1
.end method

.method public getAvailableAnnotations()[Ljava/lang/Object;
    .locals 3

    .line 249
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljavassist/CtBehavior;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAvailableParameterAnnotations()[[Ljava/lang/Object;
    .locals 3

    .line 299
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljavassist/CtBehavior;->getParameterAnnotations(Z)[[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExceptionTypes()[Ljavassist/CtClass;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v0

    .line 395
    .local v0, "ea":Ljavassist/bytecode/ExceptionsAttribute;
    if-nez v0, :cond_0

    .line 396
    const/4 v1, 0x0

    .local v1, "exceptions":[Ljava/lang/String;
    goto :goto_0

    .line 398
    .end local v1    # "exceptions":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/ExceptionsAttribute;->getExceptions()[Ljava/lang/String;

    move-result-object v1

    .line 400
    .restart local v1    # "exceptions":[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavassist/ClassPool;->get([Ljava/lang/String;)[Ljavassist/CtClass;

    move-result-object v2

    return-object v2
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 2

    .line 366
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    .line 367
    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/SignatureAttribute;

    .line 368
    .local v0, "sa":Ljavassist/bytecode/SignatureAttribute;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/SignatureAttribute;->getSignature()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public abstract getLongName()Ljava/lang/String;
.end method

.method public getMethodInfo()Ljavassist/bytecode/MethodInfo;
    .locals 1

    .line 130
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 131
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    return-object v0
.end method

.method public getMethodInfo2()Ljavassist/bytecode/MethodInfo;
    .locals 1

    .line 153
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 164
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v0

    invoke-static {v0}, Ljavassist/bytecode/AccessFlag;->toModifier(I)I

    move-result v0

    return v0
.end method

.method public getParameterAnnotations()[[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavassist/CtBehavior;->getParameterAnnotations(Z)[[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getParameterAnnotations(Z)[[Ljava/lang/Object;
    .locals 4
    .param p1, "ignoreNotFound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 310
    .local v0, "mi":Ljavassist/bytecode/MethodInfo;
    nop

    .line 311
    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    .line 312
    .local v1, "ainfo":Ljavassist/bytecode/ParameterAnnotationsAttribute;
    nop

    .line 313
    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v2}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    .line 314
    .local v2, "ainfo2":Ljavassist/bytecode/ParameterAnnotationsAttribute;
    nop

    .line 315
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    .line 314
    invoke-static {p1, v3, v1, v2, v0}, Ljavassist/CtClassType;->toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/ParameterAnnotationsAttribute;Ljavassist/bytecode/ParameterAnnotationsAttribute;Ljavassist/bytecode/MethodInfo;)[[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getParameterTypes()[Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 324
    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    .line 323
    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method getReturnType0()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 332
    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    .line 331
    invoke-static {v0, v1}, Ljavassist/bytecode/Descriptor;->getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStartPosOfBody(Ljavassist/bytecode/CodeAttribute;)I
    .locals 1
    .param p1, "ca"    # Ljavassist/bytecode/CodeAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1210
    const/4 v0, 0x0

    return v0
.end method

.method public hasAnnotation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "typeName"    # Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 193
    .local v0, "mi":Ljavassist/bytecode/MethodInfo;
    nop

    .line 194
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 195
    .local v1, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 196
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v2}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AnnotationsAttribute;

    .line 197
    .local v2, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 198
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    .line 197
    invoke-static {p1, v3, v1, v2}, Ljavassist/CtClassType;->hasAnnotationType(Ljava/lang/String;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z

    move-result v3

    return v3
.end method

.method public insertAfter(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 824
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Ljavassist/CtBehavior;->insertAfter(Ljava/lang/String;ZZ)V

    .line 825
    return-void
.end method

.method public insertAfter(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "asFinally"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljavassist/CtBehavior;->insertAfter(Ljava/lang/String;ZZ)V

    .line 843
    return-void
.end method

.method public insertAfter(Ljava/lang/String;ZZ)V
    .locals 31
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "asFinally"    # Z
    .param p3, "redundant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 871
    move-object/from16 v13, p0

    iget-object v14, v13, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 872
    .local v14, "cc":Ljavassist/CtClass;
    invoke-virtual {v14}, Ljavassist/CtClass;->checkModify()V

    .line 873
    iget-object v0, v13, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v15

    .line 874
    .local v15, "pool":Ljavassist/bytecode/ConstPool;
    iget-object v0, v13, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v12

    .line 875
    .local v12, "ca":Ljavassist/bytecode/CodeAttribute;
    if-eqz v12, :cond_9

    .line 878
    invoke-virtual {v12}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v11

    .line 879
    .local v11, "iterator":Ljavassist/bytecode/CodeIterator;
    invoke-virtual {v12}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v16

    .line 880
    .local v16, "retAddr":I
    new-instance v0, Ljavassist/bytecode/Bytecode;

    add-int/lit8 v1, v16, 0x1

    const/4 v10, 0x0

    invoke-direct {v0, v15, v10, v1}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    move-object v9, v0

    .line 881
    .local v9, "b":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v12}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v0

    const/4 v8, 0x1

    add-int/2addr v0, v8

    invoke-virtual {v9, v0}, Ljavassist/bytecode/Bytecode;->setStackDepth(I)V

    .line 882
    new-instance v0, Ljavassist/compiler/Javac;

    invoke-direct {v0, v9, v14}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    move-object v7, v0

    .line 884
    .local v7, "jv":Ljavassist/compiler/Javac;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v0

    .line 885
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v1

    .line 884
    invoke-virtual {v7, v0, v1}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    move-result v0

    .line 886
    .local v0, "nvars":I
    invoke-virtual {v7, v12, v0}, Ljavassist/compiler/Javac;->recordParamNames(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 887
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getReturnType0()Ljavassist/CtClass;

    move-result-object v1

    move-object v6, v1

    .line 888
    .local v6, "rtype":Ljavassist/CtClass;
    invoke-virtual {v7, v6, v8}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v5

    .line 889
    .local v5, "varNo":I
    invoke-virtual {v7, v12, v10}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_9

    .line 892
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object v3, v9

    move-object v4, v6

    move-object/from16 v17, v6

    .end local v6    # "rtype":Ljavassist/CtClass;
    .local v17, "rtype":Ljavassist/CtClass;
    move-object v6, v7

    move-object/from16 v18, v7

    .end local v7    # "jv":Ljavassist/compiler/Javac;
    .local v18, "jv":Ljavassist/compiler/Javac;
    move-object/from16 v7, p1

    :try_start_1
    invoke-direct/range {v1 .. v7}, Ljavassist/CtBehavior;->insertAfterHandler(ZLjavassist/bytecode/Bytecode;Ljavassist/CtClass;ILjavassist/compiler/Javac;Ljava/lang/String;)I

    move-result v1

    .line 894
    .local v1, "handlerLen":I
    invoke-virtual {v11}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v2
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljavassist/compiler/CompileError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_6

    .line 895
    .local v2, "handlerPos":I
    if-eqz p2, :cond_0

    .line 896
    :try_start_2
    invoke-virtual {v12}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v3

    invoke-virtual {v13, v12}, Ljavassist/CtBehavior;->getStartPosOfBody(Ljavassist/bytecode/CodeAttribute;)I

    move-result v4

    invoke-virtual {v3, v4, v2, v2, v10}, Ljavassist/bytecode/ExceptionTable;->add(IIII)V
    :try_end_2
    .catch Ljavassist/NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavassist/compiler/CompileError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 972
    .end local v0    # "nvars":I
    .end local v1    # "handlerLen":I
    .end local v2    # "handlerPos":I
    .end local v5    # "varNo":I
    .end local v17    # "rtype":Ljavassist/CtClass;
    :catch_0
    move-exception v0

    move-object/from16 v26, v9

    move-object v2, v11

    move-object v3, v12

    goto/16 :goto_7

    .line 969
    :catch_1
    move-exception v0

    move-object/from16 v26, v9

    move-object v2, v11

    move-object v3, v12

    goto/16 :goto_8

    .line 966
    :catch_2
    move-exception v0

    move-object/from16 v26, v9

    move-object v2, v11

    move-object v3, v12

    goto/16 :goto_9

    .line 898
    .restart local v0    # "nvars":I
    .restart local v1    # "handlerLen":I
    .restart local v2    # "handlerPos":I
    .restart local v5    # "varNo":I
    .restart local v17    # "rtype":Ljavassist/CtClass;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 899
    .local v3, "adviceLen":I
    const/4 v4, 0x0

    .line 900
    .local v4, "advicePos":I
    const/4 v6, 0x1

    move/from16 v19, v6

    .line 901
    .local v19, "noReturn":Z
    :goto_1
    :try_start_3
    invoke-virtual {v11}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 902
    invoke-virtual {v11}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v6

    move v7, v6

    .line 903
    .local v7, "pos":I
    if-lt v7, v2, :cond_1

    .line 904
    move/from16 v21, v0

    move/from16 v24, v1

    move/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v26, v9

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v25, v17

    goto/16 :goto_6

    .line 906
    :cond_1
    invoke-virtual {v11, v7}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v6

    .line 907
    .local v6, "c":I
    const/16 v8, 0xb0

    if-eq v6, v8, :cond_3

    const/16 v8, 0xac

    if-eq v6, v8, :cond_3

    const/16 v8, 0xae

    if-eq v6, v8, :cond_3

    const/16 v8, 0xad

    if-eq v6, v8, :cond_3

    const/16 v8, 0xaf

    if-eq v6, v8, :cond_3

    const/16 v8, 0xb1

    if-ne v6, v8, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v21, v0

    move v0, v2

    move/from16 v29, v3

    move-object/from16 v26, v9

    move/from16 v27, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v25, v17

    const/16 v23, 0x1

    goto/16 :goto_5

    .line 910
    :cond_3
    :goto_2
    if-eqz p3, :cond_5

    .line 911
    invoke-virtual {v11, v2}, Ljavassist/bytecode/CodeIterator;->setMark2(I)V

    .line 915
    if-eqz v19, :cond_4

    .line 916
    const/16 v19, 0x0

    .line 917
    move-object v8, v9

    .line 918
    .local v8, "bcode":Ljavassist/bytecode/Bytecode;
    move-object/from16 v21, v18

    .line 919
    .local v21, "jvc":Ljavassist/compiler/Javac;
    move/from16 v22, v5

    move/from16 v24, v1

    move v1, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v21

    move/from16 v21, v0

    move-object v0, v8

    .local v22, "retVarNo":I
    goto :goto_3

    .line 922
    .end local v8    # "bcode":Ljavassist/bytecode/Bytecode;
    .end local v21    # "jvc":Ljavassist/compiler/Javac;
    .end local v22    # "retVarNo":I
    :cond_4
    new-instance v8, Ljavassist/bytecode/Bytecode;

    move/from16 v21, v0

    .end local v0    # "nvars":I
    .local v21, "nvars":I
    add-int/lit8 v0, v16, 0x1

    invoke-direct {v8, v15, v10, v0}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 923
    .restart local v8    # "bcode":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v12}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v0

    const/16 v20, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Ljavassist/bytecode/Bytecode;->setStackDepth(I)V

    .line 924
    new-instance v0, Ljavassist/compiler/Javac;

    invoke-direct {v0, v8, v14}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 925
    .local v0, "jvc":Ljavassist/compiler/Javac;
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v10

    .line 926
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v23

    move/from16 v24, v1

    .end local v1    # "handlerLen":I
    .local v24, "handlerLen":I
    invoke-static/range {v23 .. v23}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v1

    .line 925
    invoke-virtual {v0, v10, v1}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    move-result v1

    .line 927
    .local v1, "nvars2":I
    invoke-virtual {v0, v12, v1}, Ljavassist/compiler/Javac;->recordParamNames(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 928
    move-object/from16 v10, v17

    move/from16 v17, v1

    const/4 v1, 0x1

    .end local v1    # "nvars2":I
    .local v10, "rtype":Ljavassist/CtClass;
    .local v17, "nvars2":I
    invoke-virtual {v0, v10, v1}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v20

    .line 929
    .local v20, "retVarNo":I
    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z
    :try_end_3
    .catch Ljavassist/NotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljavassist/compiler/CompileError; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_3 .. :try_end_3} :catch_6

    move-object/from16 v17, v0

    move-object v0, v8

    move/from16 v22, v20

    .line 932
    .end local v8    # "bcode":Ljavassist/bytecode/Bytecode;
    .end local v20    # "retVarNo":I
    .local v0, "bcode":Ljavassist/bytecode/Bytecode;
    .local v17, "jvc":Ljavassist/compiler/Javac;
    .restart local v22    # "retVarNo":I
    :goto_3
    move/from16 v20, v6

    .end local v6    # "c":I
    .local v20, "c":I
    move-object/from16 v6, p0

    move v8, v7

    .end local v7    # "pos":I
    .local v8, "pos":I
    move-object v7, v0

    move v1, v8

    const/16 v23, 0x1

    .end local v8    # "pos":I
    .local v1, "pos":I
    move-object/from16 v8, v17

    move-object/from16 v26, v9

    .end local v9    # "b":Ljavassist/bytecode/Bytecode;
    .local v26, "b":Ljavassist/bytecode/Bytecode;
    move-object/from16 v9, p1

    move-object/from16 v25, v10

    const/16 v27, 0x0

    .end local v10    # "rtype":Ljavassist/CtClass;
    .local v25, "rtype":Ljavassist/CtClass;
    move-object v10, v15

    move/from16 v28, v2

    move-object v2, v11

    .end local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .local v2, "iterator":Ljavassist/bytecode/CodeIterator;
    .local v28, "handlerPos":I
    move-object/from16 v11, v25

    move/from16 v29, v3

    move-object v3, v12

    .end local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v3, "ca":Ljavassist/bytecode/CodeAttribute;
    .local v29, "adviceLen":I
    move/from16 v12, v22

    :try_start_4
    invoke-direct/range {v6 .. v12}, Ljavassist/CtBehavior;->insertAfterAdvice(Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;I)I

    move-result v6

    .line 933
    .local v6, "adviceLen2":I
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljavassist/bytecode/CodeIterator;->append([B)I

    move-result v7

    .line 934
    .local v7, "offset":I
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Ljavassist/bytecode/CodeIterator;->append(Ljavassist/bytecode/ExceptionTable;I)V

    .line 935
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v8

    sub-int/2addr v8, v6

    .line 936
    .local v8, "advicePos2":I
    invoke-direct {v13, v2, v8, v1}, Ljavassist/CtBehavior;->insertGoto(Ljavassist/bytecode/CodeIterator;II)V

    .line 937
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->getMark2()I

    move-result v9

    move v0, v9

    .line 938
    .end local v6    # "adviceLen2":I
    .end local v7    # "offset":I
    .end local v8    # "advicePos2":I
    .end local v17    # "jvc":Ljavassist/compiler/Javac;
    .end local v22    # "retVarNo":I
    .end local v28    # "handlerPos":I
    .local v0, "handlerPos":I
    move/from16 v1, v24

    goto :goto_5

    .line 940
    .end local v20    # "c":I
    .end local v21    # "nvars":I
    .end local v24    # "handlerLen":I
    .end local v25    # "rtype":Ljavassist/CtClass;
    .end local v26    # "b":Ljavassist/bytecode/Bytecode;
    .end local v29    # "adviceLen":I
    .local v0, "nvars":I
    .local v1, "handlerLen":I
    .local v2, "handlerPos":I
    .local v3, "adviceLen":I
    .local v6, "c":I
    .local v7, "pos":I
    .restart local v9    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v17, "rtype":Ljavassist/CtClass;
    :cond_5
    move/from16 v21, v0

    move/from16 v24, v1

    move/from16 v28, v2

    move/from16 v29, v3

    move/from16 v20, v6

    move v1, v7

    move-object/from16 v26, v9

    move/from16 v27, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v25, v17

    const/16 v23, 0x1

    .end local v0    # "nvars":I
    .end local v6    # "c":I
    .end local v7    # "pos":I
    .end local v9    # "b":Ljavassist/bytecode/Bytecode;
    .end local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v17    # "rtype":Ljavassist/CtClass;
    .local v1, "pos":I
    .local v2, "iterator":Ljavassist/bytecode/CodeIterator;
    .local v3, "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v20    # "c":I
    .restart local v21    # "nvars":I
    .restart local v24    # "handlerLen":I
    .restart local v25    # "rtype":Ljavassist/CtClass;
    .restart local v26    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v28    # "handlerPos":I
    .restart local v29    # "adviceLen":I
    if-eqz v19, :cond_6

    .line 942
    move-object/from16 v6, p0

    move-object/from16 v7, v26

    move-object/from16 v8, v18

    move-object/from16 v9, p1

    move-object v10, v15

    move-object/from16 v11, v25

    move v12, v5

    invoke-direct/range {v6 .. v12}, Ljavassist/CtBehavior;->insertAfterAdvice(Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;I)I

    move-result v0

    .line 943
    .end local v29    # "adviceLen":I
    .local v0, "adviceLen":I
    invoke-virtual/range {v26 .. v26}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljavassist/bytecode/CodeIterator;->append([B)I

    move-result v6

    .line 944
    .end local v28    # "handlerPos":I
    .local v6, "handlerPos":I
    invoke-virtual/range {v26 .. v26}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljavassist/bytecode/CodeIterator;->append(Ljavassist/bytecode/ExceptionTable;I)V

    .line 945
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v7

    sub-int v4, v7, v0

    .line 946
    sub-int v7, v4, v6

    .line 947
    .end local v24    # "handlerLen":I
    .local v7, "handlerLen":I
    const/16 v19, 0x0

    move/from16 v29, v0

    move/from16 v28, v6

    goto :goto_4

    .line 940
    .end local v0    # "adviceLen":I
    .end local v6    # "handlerPos":I
    .end local v7    # "handlerLen":I
    .restart local v24    # "handlerLen":I
    .restart local v28    # "handlerPos":I
    .restart local v29    # "adviceLen":I
    :cond_6
    move/from16 v7, v24

    .line 950
    .end local v24    # "handlerLen":I
    .restart local v7    # "handlerLen":I
    :goto_4
    invoke-direct {v13, v2, v4, v1}, Ljavassist/CtBehavior;->insertGoto(Ljavassist/bytecode/CodeIterator;II)V

    .line 951
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v0

    sub-int v0, v0, v29

    .line 952
    .end local v4    # "advicePos":I
    .local v0, "advicePos":I
    sub-int v4, v0, v7

    move v1, v7

    move/from16 v30, v4

    move v4, v0

    move/from16 v0, v30

    .line 955
    .end local v7    # "handlerLen":I
    .end local v20    # "c":I
    .end local v28    # "handlerPos":I
    .local v0, "handlerPos":I
    .local v1, "handlerLen":I
    .restart local v4    # "advicePos":I
    :goto_5
    move-object v11, v2

    move-object v12, v3

    move/from16 v8, v23

    move-object/from16 v17, v25

    move-object/from16 v9, v26

    move/from16 v10, v27

    move/from16 v3, v29

    move v2, v0

    move/from16 v0, v21

    goto/16 :goto_1

    .line 901
    .end local v21    # "nvars":I
    .end local v25    # "rtype":Ljavassist/CtClass;
    .end local v26    # "b":Ljavassist/bytecode/Bytecode;
    .end local v29    # "adviceLen":I
    .local v0, "nvars":I
    .local v2, "handlerPos":I
    .local v3, "adviceLen":I
    .restart local v9    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v17    # "rtype":Ljavassist/CtClass;
    :cond_7
    move/from16 v21, v0

    move/from16 v24, v1

    move/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v26, v9

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v25, v17

    .line 957
    .end local v0    # "nvars":I
    .end local v1    # "handlerLen":I
    .end local v9    # "b":Ljavassist/bytecode/Bytecode;
    .end local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v17    # "rtype":Ljavassist/CtClass;
    .local v2, "iterator":Ljavassist/bytecode/CodeIterator;
    .local v3, "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v21    # "nvars":I
    .restart local v24    # "handlerLen":I
    .restart local v25    # "rtype":Ljavassist/CtClass;
    .restart local v26    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v28    # "handlerPos":I
    .restart local v29    # "adviceLen":I
    :goto_6
    if-eqz v19, :cond_8

    .line 958
    invoke-virtual/range {v26 .. v26}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavassist/bytecode/CodeIterator;->append([B)I

    move-result v0

    .line 959
    .end local v28    # "handlerPos":I
    .local v0, "handlerPos":I
    invoke-virtual/range {v26 .. v26}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljavassist/bytecode/CodeIterator;->append(Ljavassist/bytecode/ExceptionTable;I)V

    move/from16 v28, v0

    .line 962
    .end local v0    # "handlerPos":I
    .restart local v28    # "handlerPos":I
    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v0

    invoke-virtual {v3, v0}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 963
    invoke-virtual/range {v26 .. v26}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v0

    invoke-virtual {v3, v0}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 964
    iget-object v0, v13, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v14}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    invoke-virtual {v14}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_4
    .catch Ljavassist/NotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljavassist/compiler/CompileError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_4 .. :try_end_4} :catch_3

    .line 974
    .end local v4    # "advicePos":I
    .end local v5    # "varNo":I
    .end local v19    # "noReturn":Z
    .end local v21    # "nvars":I
    .end local v24    # "handlerLen":I
    .end local v25    # "rtype":Ljavassist/CtClass;
    .end local v28    # "handlerPos":I
    .end local v29    # "adviceLen":I
    nop

    .line 975
    return-void

    .line 972
    :catch_3
    move-exception v0

    goto :goto_7

    .line 969
    :catch_4
    move-exception v0

    goto :goto_8

    .line 966
    :catch_5
    move-exception v0

    goto :goto_9

    .line 972
    .end local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v26    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v9    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_6
    move-exception v0

    move-object/from16 v26, v9

    move-object v2, v11

    move-object v3, v12

    .end local v9    # "b":Ljavassist/bytecode/Bytecode;
    .end local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v26    # "b":Ljavassist/bytecode/Bytecode;
    goto :goto_7

    .line 969
    .end local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v26    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v9    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_7
    move-exception v0

    move-object/from16 v26, v9

    move-object v2, v11

    move-object v3, v12

    .end local v9    # "b":Ljavassist/bytecode/Bytecode;
    .end local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v26    # "b":Ljavassist/bytecode/Bytecode;
    goto :goto_8

    .line 966
    .end local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v26    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v9    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_8
    move-exception v0

    move-object/from16 v26, v9

    move-object v2, v11

    move-object v3, v12

    .end local v9    # "b":Ljavassist/bytecode/Bytecode;
    .end local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v26    # "b":Ljavassist/bytecode/Bytecode;
    goto :goto_9

    .line 972
    .end local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v18    # "jv":Ljavassist/compiler/Javac;
    .end local v26    # "b":Ljavassist/bytecode/Bytecode;
    .local v7, "jv":Ljavassist/compiler/Javac;
    .restart local v9    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_9
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v26, v9

    move-object v2, v11

    move-object v3, v12

    .line 973
    .end local v7    # "jv":Ljavassist/compiler/Javac;
    .end local v9    # "b":Ljavassist/bytecode/Bytecode;
    .end local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    .restart local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v18    # "jv":Ljavassist/compiler/Javac;
    .restart local v26    # "b":Ljavassist/bytecode/Bytecode;
    :goto_7
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 969
    .end local v0    # "e":Ljavassist/bytecode/BadBytecode;
    .end local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v18    # "jv":Ljavassist/compiler/Javac;
    .end local v26    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v7    # "jv":Ljavassist/compiler/Javac;
    .restart local v9    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_a
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v26, v9

    move-object v2, v11

    move-object v3, v12

    .line 970
    .end local v7    # "jv":Ljavassist/compiler/Javac;
    .end local v9    # "b":Ljavassist/bytecode/Bytecode;
    .end local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v0, "e":Ljavassist/compiler/CompileError;
    .restart local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v18    # "jv":Ljavassist/compiler/Javac;
    .restart local v26    # "b":Ljavassist/bytecode/Bytecode;
    :goto_8
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v1

    .line 966
    .end local v0    # "e":Ljavassist/compiler/CompileError;
    .end local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v18    # "jv":Ljavassist/compiler/Javac;
    .end local v26    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v7    # "jv":Ljavassist/compiler/Javac;
    .restart local v9    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_b
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v26, v9

    move-object v2, v11

    move-object v3, v12

    .line 967
    .end local v7    # "jv":Ljavassist/compiler/Javac;
    .end local v9    # "b":Ljavassist/bytecode/Bytecode;
    .end local v11    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v0, "e":Ljavassist/NotFoundException;
    .restart local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .restart local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v18    # "jv":Ljavassist/compiler/Javac;
    .restart local v26    # "b":Ljavassist/bytecode/Bytecode;
    :goto_9
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v1

    .line 876
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v2    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v16    # "retAddr":I
    .end local v18    # "jv":Ljavassist/compiler/Javac;
    .end local v26    # "b":Ljavassist/bytecode/Bytecode;
    .restart local v12    # "ca":Ljavassist/bytecode/CodeAttribute;
    :cond_9
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v1, "no method body"

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertAt(ILjava/lang/String;)I
    .locals 1
    .param p1, "lineNum"    # I
    .param p2, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1233
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Ljavassist/CtBehavior;->insertAt(IZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertAt(IZLjava/lang/String;)I
    .locals 16
    .param p1, "lineNum"    # I
    .param p2, "modify"    # Z
    .param p3, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1261
    move-object/from16 v1, p0

    iget-object v0, v1, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v2

    .line 1262
    .local v2, "ca":Ljavassist/bytecode/CodeAttribute;
    if-eqz v2, :cond_3

    .line 1265
    nop

    .line 1266
    const-string v0, "LineNumberTable"

    invoke-virtual {v2, v0}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljavassist/bytecode/LineNumberAttribute;

    .line 1267
    .local v3, "ainfo":Ljavassist/bytecode/LineNumberAttribute;
    if-eqz v3, :cond_2

    .line 1270
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljavassist/bytecode/LineNumberAttribute;->toNearPc(I)Ljavassist/bytecode/LineNumberAttribute$Pc;

    move-result-object v4

    .line 1271
    .local v4, "pc":Ljavassist/bytecode/LineNumberAttribute$Pc;
    iget v5, v4, Ljavassist/bytecode/LineNumberAttribute$Pc;->line:I

    .line 1272
    .end local p1    # "lineNum":I
    .local v5, "lineNum":I
    iget v6, v4, Ljavassist/bytecode/LineNumberAttribute$Pc;->index:I

    .line 1273
    .local v6, "index":I
    if-nez p2, :cond_0

    .line 1274
    return v5

    .line 1276
    :cond_0
    iget-object v7, v1, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 1277
    .local v7, "cc":Ljavassist/CtClass;
    invoke-virtual {v7}, Ljavassist/CtClass;->checkModify()V

    .line 1278
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v8

    .line 1279
    .local v8, "iterator":Ljavassist/bytecode/CodeIterator;
    new-instance v0, Ljavassist/compiler/Javac;

    invoke-direct {v0, v7}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    move-object v9, v0

    .line 1281
    .local v9, "jv":Ljavassist/compiler/Javac;
    :try_start_0
    invoke-virtual {v9, v2, v6}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 1282
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getParameterTypes()[Ljavassist/CtClass;

    move-result-object v0

    .line 1283
    invoke-virtual/range {p0 .. p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v10

    .line 1282
    invoke-virtual {v9, v0, v10}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I

    .line 1284
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v0

    invoke-virtual {v9, v0}, Ljavassist/compiler/Javac;->setMaxLocals(I)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_3

    .line 1285
    move-object/from16 v10, p3

    :try_start_1
    invoke-virtual {v9, v10}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v9}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v0

    .line 1287
    .local v0, "b":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v11

    .line 1288
    .local v11, "locals":I
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v12

    .line 1289
    .local v12, "stack":I
    invoke-virtual {v2, v11}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 1294
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v13

    if-le v12, v13, :cond_1

    .line 1295
    invoke-virtual {v2, v12}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 1297
    :cond_1
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v13

    invoke-virtual {v8, v6, v13}, Ljavassist/bytecode/CodeIterator;->insertAt(I[B)I

    move-result v13

    move v6, v13

    .line 1298
    invoke-virtual {v0}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v13

    invoke-virtual {v8, v13, v6}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 1299
    iget-object v13, v1, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v7}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v14

    invoke-virtual {v7}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavassist/compiler/CompileError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    .line 1300
    return v5

    .line 1308
    .end local v0    # "b":Ljavassist/bytecode/Bytecode;
    .end local v11    # "locals":I
    .end local v12    # "stack":I
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1305
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1302
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1308
    :catch_3
    move-exception v0

    move-object/from16 v10, p3

    .line 1309
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    :goto_0
    new-instance v11, Ljavassist/CannotCompileException;

    invoke-direct {v11, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 1305
    .end local v0    # "e":Ljavassist/bytecode/BadBytecode;
    :catch_4
    move-exception v0

    move-object/from16 v10, p3

    .line 1306
    .local v0, "e":Ljavassist/compiler/CompileError;
    :goto_1
    new-instance v11, Ljavassist/CannotCompileException;

    invoke-direct {v11, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v11

    .line 1302
    .end local v0    # "e":Ljavassist/compiler/CompileError;
    :catch_5
    move-exception v0

    move-object/from16 v10, p3

    .line 1303
    .local v0, "e":Ljavassist/NotFoundException;
    :goto_2
    new-instance v11, Ljavassist/CannotCompileException;

    invoke-direct {v11, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v11

    .line 1268
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v4    # "pc":Ljavassist/bytecode/LineNumberAttribute$Pc;
    .end local v5    # "lineNum":I
    .end local v6    # "index":I
    .end local v7    # "cc":Ljavassist/CtClass;
    .end local v8    # "iterator":Ljavassist/bytecode/CodeIterator;
    .end local v9    # "jv":Ljavassist/compiler/Javac;
    .restart local p1    # "lineNum":I
    :cond_2
    move/from16 v0, p1

    move-object/from16 v10, p3

    new-instance v4, Ljavassist/CannotCompileException;

    const-string v5, "no line number info"

    invoke-direct {v4, v5}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1263
    .end local v3    # "ainfo":Ljavassist/bytecode/LineNumberAttribute;
    :cond_3
    move/from16 v0, p1

    move-object/from16 v10, p3

    new-instance v3, Ljavassist/CannotCompileException;

    const-string v4, "no method body"

    invoke-direct {v3, v4}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public insertBefore(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 766
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljavassist/CtBehavior;->insertBefore(Ljava/lang/String;Z)V

    .line 767
    return-void
.end method

.method public insertParameter(Ljavassist/CtClass;)V
    .locals 4
    .param p1, "type"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 641
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "desc":Ljava/lang/String;
    invoke-static {p1, v0}, Ljavassist/bytecode/Descriptor;->insertParameter(Ljavassist/CtClass;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "desc2":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2, p1, v0}, Ljavassist/CtBehavior;->addParameter2(ILjavassist/CtClass;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    nop

    .line 650
    iget-object v2, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/MethodInfo;->setDescriptor(Ljava/lang/String;)V

    .line 651
    return-void

    .line 646
    :catch_0
    move-exception v2

    .line 647
    .local v2, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v3, Ljavassist/CannotCompileException;

    invoke-direct {v3, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public instrument(Ljavassist/CodeConverter;)V
    .locals 3
    .param p1, "converter"    # Ljavassist/CodeConverter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 718
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 719
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 720
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v1

    iget-object v2, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1, v1, v2, v0}, Ljavassist/CodeConverter;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;)V

    .line 721
    return-void
.end method

.method public instrument(Ljavassist/expr/ExprEditor;)V
    .locals 2
    .param p1, "editor"    # Ljavassist/expr/ExprEditor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 744
    :cond_0
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    iget-object v1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1, v0, v1}, Ljavassist/expr/ExprEditor;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 746
    :cond_1
    return-void
.end method

.method public abstract isEmpty()Z
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 542
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 543
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    new-instance v1, Ljavassist/bytecode/AttributeInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 545
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Ljavassist/CtBehavior;->setBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "delegateObj"    # Ljava/lang/String;
    .param p3, "delegateMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 460
    .local v0, "cc":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 462
    :try_start_0
    new-instance v1, Ljavassist/compiler/Javac;

    invoke-direct {v1, v0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 463
    .local v1, "jv":Ljavassist/compiler/Javac;
    if-eqz p3, :cond_0

    .line 464
    invoke-virtual {v1, p2, p3}, Ljavassist/compiler/Javac;->recordProceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_0
    invoke-virtual {v1, p0, p1}, Ljavassist/compiler/Javac;->compileBody(Ljavassist/CtBehavior;Ljava/lang/String;)Ljavassist/bytecode/Bytecode;

    move-result-object v2

    .line 467
    .local v2, "b":Ljavassist/bytecode/Bytecode;
    iget-object v3, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 468
    iget-object v3, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v4

    and-int/lit16 v4, v4, -0x401

    invoke-virtual {v3, v4}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 470
    iget-object v3, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v4

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V

    .line 471
    iget-object v3, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v3}, Ljavassist/CtClass;->rebuildClassFile()V
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v1    # "jv":Ljavassist/compiler/Javac;
    .end local v2    # "b":Ljavassist/bytecode/Bytecode;
    nop

    .line 478
    return-void

    .line 475
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 473
    .end local v1    # "e":Ljavassist/bytecode/BadBytecode;
    :catch_1
    move-exception v1

    .line 474
    .local v1, "e":Ljavassist/compiler/CompileError;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v2
.end method

.method public setExceptionTypes([Ljavassist/CtClass;)V
    .locals 4
    .param p1, "types"    # [Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 408
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 413
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 414
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 415
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v1

    .line 418
    .local v1, "ea":Ljavassist/bytecode/ExceptionsAttribute;
    if-nez v1, :cond_2

    .line 419
    new-instance v2, Ljavassist/bytecode/ExceptionsAttribute;

    iget-object v3, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    move-object v1, v2

    .line 420
    iget-object v2, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/MethodInfo;->setExceptionsAttribute(Ljavassist/bytecode/ExceptionsAttribute;)V

    .line 423
    :cond_2
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ExceptionsAttribute;->setExceptions([Ljava/lang/String;)V

    .line 424
    return-void

    .line 409
    .end local v0    # "names":[Ljava/lang/String;
    .end local v1    # "ea":Ljavassist/bytecode/ExceptionsAttribute;
    :cond_3
    :goto_1
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->removeExceptionsAttribute()V

    .line 410
    return-void
.end method

.method public setGenericSignature(Ljava/lang/String;)V
    .locals 3
    .param p1, "sig"    # Ljava/lang/String;

    .line 383
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 384
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    new-instance v1, Ljavassist/bytecode/SignatureAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavassist/bytecode/SignatureAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 385
    return-void
.end method

.method public setModifiers(I)V
    .locals 2
    .param p1, "mod"    # I

    .line 178
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 179
    iget-object v0, p0, Ljavassist/CtBehavior;->methodInfo:Ljavassist/bytecode/MethodInfo;

    invoke-static {p1}, Ljavassist/bytecode/AccessFlag;->of(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 180
    return-void
.end method

.method public useCflow(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 566
    iget-object v0, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    .line 567
    .local v0, "cc":Ljavassist/CtClass;
    invoke-virtual {v0}, Ljavassist/CtClass;->checkModify()V

    .line 568
    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    .line 570
    .local v1, "pool":Ljavassist/ClassPool;
    const/4 v2, 0x0

    .line 572
    .local v2, "i":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_cflow$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "fname":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v2}, Ljavassist/CtClass;->getDeclaredField(Ljava/lang/String;)Ljavassist/CtField;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    move v2, v4

    goto :goto_0

    .line 576
    :catch_0
    move-exception v3

    .line 577
    .local v3, "e":Ljavassist/NotFoundException;
    nop

    .line 581
    .end local v3    # "e":Ljavassist/NotFoundException;
    iget-object v3, p0, Ljavassist/CtBehavior;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3, v2}, Ljavassist/ClassPool;->recordCflow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :try_start_1
    const-string v3, "javassist.runtime.Cflow"

    invoke-virtual {v1, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    .line 584
    .local v3, "type":Ljavassist/CtClass;
    new-instance v5, Ljavassist/CtField;

    invoke-direct {v5, v3, v2, v0}, Ljavassist/CtField;-><init>(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/CtClass;)V

    .line 585
    .local v5, "field":Ljavassist/CtField;
    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljavassist/CtField;->setModifiers(I)V

    .line 586
    invoke-static {v3}, Ljavassist/CtField$Initializer;->byNew(Ljavassist/CtClass;)Ljavassist/CtField$Initializer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljavassist/CtClass;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 587
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".enter();"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Ljavassist/CtBehavior;->insertBefore(Ljava/lang/String;Z)V

    .line 588
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".exit();"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 589
    .local v6, "src":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Ljavassist/CtBehavior;->insertAfter(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 593
    .end local v3    # "type":Ljavassist/CtClass;
    .end local v5    # "field":Ljavassist/CtField;
    .end local v6    # "src":Ljava/lang/String;
    nop

    .line 594
    return-void

    .line 591
    :catch_1
    move-exception v3

    .line 592
    .local v3, "e":Ljavassist/NotFoundException;
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v3}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v5
.end method
