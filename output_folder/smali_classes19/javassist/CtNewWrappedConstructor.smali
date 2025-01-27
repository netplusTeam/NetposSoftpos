.class Ljavassist/CtNewWrappedConstructor;
.super Ljavassist/CtNewWrappedMethod;
.source "CtNewWrappedConstructor.java"


# static fields
.field private static final PASS_NONE:I = 0x0

.field private static final PASS_PARAMS:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljavassist/CtNewWrappedMethod;-><init>()V

    return-void
.end method

.method protected static makeBody(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;ILjavassist/CtMethod;[Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;)Ljavassist/bytecode/Bytecode;
    .locals 14
    .param p0, "declaring"    # Ljavassist/CtClass;
    .param p1, "classfile"    # Ljavassist/bytecode/ClassFile;
    .param p2, "howToCallSuper"    # I
    .param p3, "wrappedBody"    # Ljavassist/CtMethod;
    .param p4, "parameters"    # [Ljavassist/CtClass;
    .param p5, "cparam"    # Ljavassist/CtMethod$ConstParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 61
    move/from16 v0, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getSuperclassId()I

    move-result v11

    .line 62
    .local v11, "superclazz":I
    new-instance v1, Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    move-object v12, v1

    .line 63
    .local v12, "code":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v12, v3, v9, v3}, Ljavassist/bytecode/Bytecode;->setMaxLocals(Z[Ljavassist/CtClass;I)V

    .line 64
    invoke-virtual {v12, v3}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 65
    const-string v1, "<init>"

    if-nez v0, :cond_0

    .line 66
    const/4 v2, 0x1

    .line 67
    .local v2, "stacksize":I
    const-string v3, "()V"

    invoke-virtual {v12, v11, v1, v3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ILjava/lang/String;Ljava/lang/String;)V

    move v13, v2

    goto :goto_1

    .line 69
    .end local v2    # "stacksize":I
    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 70
    invoke-virtual {v12, v9, v3}, Ljavassist/bytecode/Bytecode;->addLoadParameters([Ljavassist/CtClass;I)I

    move-result v2

    add-int/2addr v2, v3

    .line 71
    .restart local v2    # "stacksize":I
    nop

    .line 72
    invoke-static/range {p4 .. p4}, Ljavassist/bytecode/Descriptor;->ofConstructor([Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v12, v11, v1, v3}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ILjava/lang/String;Ljava/lang/String;)V

    move v13, v2

    goto :goto_1

    .line 75
    .end local v2    # "stacksize":I
    :cond_1
    invoke-static {v12, v9, v3}, Ljavassist/CtNewWrappedConstructor;->compileParameterList(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;I)I

    move-result v3

    .line 77
    .local v3, "stacksize":I
    if-nez v10, :cond_2

    .line 78
    const/4 v2, 0x2

    .line 79
    .local v2, "stacksize2":I
    invoke-static {}, Ljavassist/CtMethod$ConstParameter;->defaultConstDescriptor()Ljava/lang/String;

    move-result-object v4

    .local v4, "desc":Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v2    # "stacksize2":I
    .end local v4    # "desc":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10, v12}, Ljavassist/CtMethod$ConstParameter;->compile(Ljavassist/bytecode/Bytecode;)I

    move-result v4

    add-int/2addr v2, v4

    .line 83
    .restart local v2    # "stacksize2":I
    invoke-virtual/range {p5 .. p5}, Ljavassist/CtMethod$ConstParameter;->constDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 86
    .restart local v4    # "desc":Ljava/lang/String;
    :goto_0
    if-ge v3, v2, :cond_3

    .line 87
    move v3, v2

    .line 89
    :cond_3
    invoke-virtual {v12, v11, v1, v4}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ILjava/lang/String;Ljava/lang/String;)V

    move v13, v3

    .line 92
    .end local v2    # "stacksize2":I
    .end local v3    # "stacksize":I
    .end local v4    # "desc":Ljava/lang/String;
    .local v13, "stacksize":I
    :goto_1
    if-nez p3, :cond_4

    .line 93
    const/16 v1, 0xb1

    invoke-virtual {v12, v1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_2

    .line 95
    :cond_4
    const/4 v4, 0x0

    sget-object v6, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object v8, v12

    invoke-static/range {v1 .. v8}, Ljavassist/CtNewWrappedConstructor;->makeBody0(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;Ljavassist/CtMethod;Z[Ljavassist/CtClass;Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;Ljavassist/bytecode/Bytecode;)I

    move-result v1

    .line 98
    .local v1, "stacksize2":I
    if-ge v13, v1, :cond_5

    .line 99
    move v13, v1

    .line 102
    .end local v1    # "stacksize2":I
    :cond_5
    :goto_2
    invoke-virtual {v12, v13}, Ljavassist/bytecode/Bytecode;->setMaxStack(I)V

    .line 103
    return-object v12
.end method

.method public static wrapped([Ljavassist/CtClass;[Ljavassist/CtClass;ILjavassist/CtMethod;Ljavassist/CtMethod$ConstParameter;Ljavassist/CtClass;)Ljavassist/CtConstructor;
    .locals 7
    .param p0, "parameterTypes"    # [Ljavassist/CtClass;
    .param p1, "exceptionTypes"    # [Ljavassist/CtClass;
    .param p2, "howToCallSuper"    # I
    .param p3, "body"    # Ljavassist/CtMethod;
    .param p4, "constParam"    # Ljavassist/CtMethod$ConstParameter;
    .param p5, "declaring"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 38
    :try_start_0
    new-instance v0, Ljavassist/CtConstructor;

    invoke-direct {v0, p0, p5}, Ljavassist/CtConstructor;-><init>([Ljavassist/CtClass;Ljavassist/CtClass;)V

    .line 39
    .local v0, "cons":Ljavassist/CtConstructor;
    invoke-virtual {v0, p1}, Ljavassist/CtConstructor;->setExceptionTypes([Ljavassist/CtClass;)V

    .line 40
    invoke-virtual {p5}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    move-object v1, p5

    move v3, p2

    move-object v4, p3

    move-object v5, p0

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Ljavassist/CtNewWrappedConstructor;->makeBody(Ljavassist/CtClass;Ljavassist/bytecode/ClassFile;ILjavassist/CtMethod;[Ljavassist/CtClass;Ljavassist/CtMethod$ConstParameter;)Ljavassist/bytecode/Bytecode;

    move-result-object v1

    .line 43
    .local v1, "code":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v0}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object v0

    .line 47
    .end local v0    # "cons":Ljavassist/CtConstructor;
    .end local v1    # "code":Ljavassist/bytecode/Bytecode;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v1
.end method
