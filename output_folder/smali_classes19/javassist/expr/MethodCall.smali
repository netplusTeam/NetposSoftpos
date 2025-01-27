.class public Ljavassist/expr/MethodCall;
.super Ljavassist/expr/Expr;
.source "MethodCall.java"


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "i"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "declaring"    # Ljavassist/CtClass;
    .param p4, "m"    # Ljavassist/bytecode/MethodInfo;

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 45
    return-void
.end method

.method private getNameAndType(Ljavassist/bytecode/ConstPool;)I
    .locals 4
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 48
    iget v0, p0, Ljavassist/expr/MethodCall;->currentPos:I

    .line 49
    .local v0, "pos":I
    iget-object v1, p0, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v1

    .line 50
    .local v1, "c":I
    iget-object v2, p0, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v2

    .line 52
    .local v2, "index":I
    const/16 v3, 0xb9

    if-ne v1, v3, :cond_0

    .line 53
    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefNameAndType(I)I

    move-result v3

    return v3

    .line 54
    :cond_0
    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->getMethodrefNameAndType(I)I

    move-result v3

    return v3
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 7

    .line 100
    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 101
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    iget v1, p0, Ljavassist/expr/MethodCall;->currentPos:I

    .line 102
    .local v1, "pos":I
    iget-object v2, p0, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    .line 103
    .local v2, "c":I
    iget-object v3, p0, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v3

    .line 105
    .local v3, "index":I
    const/16 v4, 0xb9

    if-ne v2, v4, :cond_0

    .line 106
    invoke-virtual {v0, v3}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefClassName(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "cname":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v4    # "cname":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    .restart local v4    # "cname":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_1

    .line 111
    invoke-static {v4}, Ljavassist/bytecode/Descriptor;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    :cond_1
    return-object v4
.end method

.method protected getCtClass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Ljavassist/expr/MethodCall;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 72
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljavassist/CtMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavassist/CtClass;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 3

    .line 120
    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 121
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-direct {p0, v0}, Ljavassist/expr/MethodCall;->getNameAndType(Ljavassist/bytecode/ConstPool;)I

    move-result v1

    .line 122
    .local v1, "nt":I
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getNameAndTypeName(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .line 143
    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 144
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-direct {p0, v0}, Ljavassist/expr/MethodCall;->getNameAndType(Ljavassist/bytecode/ConstPool;)I

    move-result v1

    .line 145
    .local v1, "nt":I
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getNameAndTypeDescriptor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isSuper()Z
    .locals 2

    .line 164
    iget-object v0, p0, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/MethodCall;->currentPos:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    .line 165
    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->where()Ljavassist/CtBehavior;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtBehavior;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/expr/MethodCall;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .line 156
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 24
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 196
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Ljavassist/expr/MethodCall;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 197
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/MethodCall;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 198
    .local v3, "constPool":Ljavassist/bytecode/ConstPool;
    iget v4, v1, Ljavassist/expr/MethodCall;->currentPos:I

    .line 199
    .local v4, "pos":I
    iget-object v0, v1, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v5

    .line 203
    .local v5, "index":I
    iget-object v0, v1, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v0, v4}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v12

    .line 204
    .local v12, "c":I
    const/16 v0, 0xb7

    const/16 v13, 0xb8

    const/16 v6, 0xb9

    if-ne v12, v6, :cond_0

    .line 205
    const/4 v6, 0x5

    .line 206
    .local v6, "opcodeSize":I
    invoke-virtual {v3, v5}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefClassName(I)Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "classname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefName(I)Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, "methodname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljavassist/bytecode/ConstPool;->getInterfaceMethodrefType(I)Ljava/lang/String;

    move-result-object v9

    move v14, v6

    move-object v15, v7

    move-object v11, v8

    move-object v10, v9

    .local v9, "signature":Ljava/lang/String;
    goto :goto_1

    .line 210
    .end local v6    # "opcodeSize":I
    .end local v7    # "classname":Ljava/lang/String;
    .end local v8    # "methodname":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    :cond_0
    if-eq v12, v13, :cond_2

    if-eq v12, v0, :cond_2

    const/16 v6, 0xb6

    if-ne v12, v6, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v6, "not method invocation"

    invoke-direct {v0, v6}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_2
    :goto_0
    const/4 v6, 0x3

    .line 213
    .restart local v6    # "opcodeSize":I
    invoke-virtual {v3, v5}, Ljavassist/bytecode/ConstPool;->getMethodrefClassName(I)Ljava/lang/String;

    move-result-object v7

    .line 214
    .restart local v7    # "classname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljavassist/bytecode/ConstPool;->getMethodrefName(I)Ljava/lang/String;

    move-result-object v8

    .line 215
    .restart local v8    # "methodname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v9

    move v14, v6

    move-object v15, v7

    move-object v11, v8

    move-object v10, v9

    .line 220
    .end local v6    # "opcodeSize":I
    .end local v7    # "classname":Ljava/lang/String;
    .end local v8    # "methodname":Ljava/lang/String;
    .local v10, "signature":Ljava/lang/String;
    .local v11, "methodname":Ljava/lang/String;
    .local v14, "opcodeSize":I
    .local v15, "classname":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljavassist/compiler/Javac;

    iget-object v7, v1, Ljavassist/expr/MethodCall;->thisClass:Ljavassist/CtClass;

    invoke-direct {v6, v7}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    move-object v9, v6

    .line 221
    .local v9, "jc":Ljavassist/compiler/Javac;
    iget-object v6, v1, Ljavassist/expr/MethodCall;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v6}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v8

    .line 222
    .local v8, "cp":Ljavassist/ClassPool;
    iget-object v6, v1, Ljavassist/expr/MethodCall;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v6}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v7

    .line 224
    .local v7, "ca":Ljavassist/bytecode/CodeAttribute;
    :try_start_0
    invoke-static {v10, v8}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v6

    .line 225
    .local v6, "params":[Ljavassist/CtClass;
    invoke-static {v10, v8}, Ljavassist/bytecode/Descriptor;->getReturnType(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v16

    move-object/from16 v17, v16

    .line 226
    .local v17, "retType":Ljavassist/CtClass;
    invoke-virtual {v7}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v16

    move/from16 v18, v16

    .line 227
    .local v18, "paramVar":I
    const/16 v16, 0x1

    .line 228
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/MethodCall;->withinStatic()Z

    move-result v19
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_12

    .line 227
    move-object/from16 v20, v6

    .end local v6    # "params":[Ljavassist/CtClass;
    .local v20, "params":[Ljavassist/CtClass;
    move-object v6, v9

    move-object/from16 v21, v7

    .end local v7    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v21, "ca":Ljavassist/bytecode/CodeAttribute;
    move-object v7, v15

    move-object/from16 v22, v8

    .end local v8    # "cp":Ljavassist/ClassPool;
    .local v22, "cp":Ljavassist/ClassPool;
    move-object/from16 v8, v20

    move-object v13, v9

    .end local v9    # "jc":Ljavassist/compiler/Javac;
    .local v13, "jc":Ljavassist/compiler/Javac;
    move/from16 v9, v16

    move-object/from16 v16, v10

    .end local v10    # "signature":Ljava/lang/String;
    .local v16, "signature":Ljava/lang/String;
    move/from16 v10, v18

    move-object/from16 v23, v3

    move-object v3, v11

    .end local v11    # "methodname":Ljava/lang/String;
    .local v3, "methodname":Ljava/lang/String;
    .local v23, "constPool":Ljavassist/bytecode/ConstPool;
    move/from16 v11, v19

    :try_start_1
    invoke-virtual/range {v6 .. v11}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    .line 229
    const/4 v11, 0x1

    move-object/from16 v10, v17

    .end local v17    # "retType":Ljavassist/CtClass;
    .local v10, "retType":Ljavassist/CtClass;
    invoke-virtual {v13, v10, v11}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v6
    :try_end_1
    .catch Ljavassist/compiler/CompileError; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_f

    move v9, v6

    .line 230
    .local v9, "retVar":I
    const/16 v6, 0xb8

    if-ne v12, v6, :cond_3

    .line 231
    :try_start_2
    invoke-virtual {v13, v15, v3}, Ljavassist/compiler/Javac;->recordStaticProceed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavassist/compiler/CompileError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavassist/NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v9

    move/from16 v19, v11

    move-object/from16 v17, v15

    move-object v15, v10

    goto/16 :goto_2

    .line 259
    .end local v9    # "retVar":I
    .end local v10    # "retType":Ljavassist/CtClass;
    .end local v18    # "paramVar":I
    .end local v20    # "params":[Ljavassist/CtClass;
    :catch_0
    move-exception v0

    move-object/from16 v17, v15

    move-object/from16 v9, v21

    goto/16 :goto_4

    .line 258
    :catch_1
    move-exception v0

    move-object/from16 v17, v15

    move-object/from16 v9, v21

    goto/16 :goto_5

    .line 257
    :catch_2
    move-exception v0

    move-object/from16 v17, v15

    move-object/from16 v9, v21

    goto/16 :goto_6

    .line 232
    .restart local v9    # "retVar":I
    .restart local v10    # "retType":Ljavassist/CtClass;
    .restart local v18    # "paramVar":I
    .restart local v20    # "params":[Ljavassist/CtClass;
    :cond_3
    if-ne v12, v0, :cond_4

    .line 233
    :try_start_3
    const-string v7, "$0"
    :try_end_3
    .catch Ljavassist/compiler/CompileError; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljavassist/NotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_3 .. :try_end_3} :catch_6

    move-object v6, v13

    move-object v8, v15

    move v0, v9

    .end local v9    # "retVar":I
    .local v0, "retVar":I
    move-object v9, v3

    move-object/from16 v17, v15

    move-object v15, v10

    .end local v10    # "retType":Ljavassist/CtClass;
    .local v15, "retType":Ljavassist/CtClass;
    .local v17, "classname":Ljava/lang/String;
    move-object/from16 v10, v16

    move/from16 v19, v11

    move v11, v5

    :try_start_4
    invoke-virtual/range {v6 .. v11}, Ljavassist/compiler/Javac;->recordSpecialProceed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljavassist/compiler/CompileError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljavassist/NotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 259
    .end local v0    # "retVar":I
    .end local v15    # "retType":Ljavassist/CtClass;
    .end local v18    # "paramVar":I
    .end local v20    # "params":[Ljavassist/CtClass;
    :catch_3
    move-exception v0

    move-object/from16 v9, v21

    goto/16 :goto_4

    .line 258
    :catch_4
    move-exception v0

    move-object/from16 v9, v21

    goto/16 :goto_5

    .line 257
    :catch_5
    move-exception v0

    move-object/from16 v9, v21

    goto/16 :goto_6

    .line 259
    .end local v17    # "classname":Ljava/lang/String;
    .local v15, "classname":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v17, v15

    move-object/from16 v9, v21

    .end local v15    # "classname":Ljava/lang/String;
    .restart local v17    # "classname":Ljava/lang/String;
    goto/16 :goto_4

    .line 258
    .end local v17    # "classname":Ljava/lang/String;
    .restart local v15    # "classname":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v17, v15

    move-object/from16 v9, v21

    .end local v15    # "classname":Ljava/lang/String;
    .restart local v17    # "classname":Ljava/lang/String;
    goto/16 :goto_5

    .line 257
    .end local v17    # "classname":Ljava/lang/String;
    .restart local v15    # "classname":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object/from16 v17, v15

    move-object/from16 v9, v21

    .end local v15    # "classname":Ljava/lang/String;
    .restart local v17    # "classname":Ljava/lang/String;
    goto/16 :goto_6

    .line 236
    .end local v17    # "classname":Ljava/lang/String;
    .restart local v9    # "retVar":I
    .restart local v10    # "retType":Ljavassist/CtClass;
    .restart local v15    # "classname":Ljava/lang/String;
    .restart local v18    # "paramVar":I
    .restart local v20    # "params":[Ljavassist/CtClass;
    :cond_4
    move v0, v9

    move/from16 v19, v11

    move-object/from16 v17, v15

    move-object v15, v10

    .end local v9    # "retVar":I
    .end local v10    # "retType":Ljavassist/CtClass;
    .restart local v0    # "retVar":I
    .local v15, "retType":Ljavassist/CtClass;
    .restart local v17    # "classname":Ljava/lang/String;
    :try_start_5
    const-string v6, "$0"

    invoke-virtual {v13, v6, v3}, Ljavassist/compiler/Javac;->recordProceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_2
    invoke-static {v15, v2}, Ljavassist/expr/MethodCall;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    .line 242
    invoke-virtual {v13}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v6

    .line 243
    .local v6, "bytecode":Ljavassist/bytecode/Bytecode;
    const/16 v7, 0xb8

    if-ne v12, v7, :cond_5

    move/from16 v11, v19

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    move/from16 v8, v18

    move-object/from16 v7, v20

    .end local v18    # "paramVar":I
    .end local v20    # "params":[Ljavassist/CtClass;
    .local v7, "params":[Ljavassist/CtClass;
    .local v8, "paramVar":I
    invoke-static {v7, v11, v8, v6}, Ljavassist/expr/MethodCall;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V
    :try_end_5
    .catch Ljavassist/compiler/CompileError; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljavassist/NotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_5 .. :try_end_5} :catch_c

    .line 244
    move-object/from16 v9, v21

    .end local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v9, "ca":Ljavassist/bytecode/CodeAttribute;
    :try_start_6
    invoke-virtual {v13, v9, v4}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 246
    sget-object v10, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-eq v15, v10, :cond_6

    .line 247
    invoke-virtual {v6, v15}, Ljavassist/bytecode/Bytecode;->addConstZero(Ljavassist/CtClass;)V

    .line 248
    invoke-virtual {v6, v0, v15}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 251
    :cond_6
    invoke-virtual {v13, v2}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 252
    sget-object v10, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-eq v15, v10, :cond_7

    .line 253
    invoke-virtual {v6, v0, v15}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 255
    :cond_7
    invoke-virtual {v1, v4, v6, v14}, Ljavassist/expr/MethodCall;->replace0(ILjavassist/bytecode/Bytecode;I)V
    :try_end_6
    .catch Ljavassist/compiler/CompileError; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljavassist/NotFoundException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_6 .. :try_end_6} :catch_9

    .line 261
    .end local v0    # "retVar":I
    .end local v6    # "bytecode":Ljavassist/bytecode/Bytecode;
    .end local v7    # "params":[Ljavassist/CtClass;
    .end local v8    # "paramVar":I
    .end local v15    # "retType":Ljavassist/CtClass;
    nop

    .line 262
    return-void

    .line 259
    :catch_9
    move-exception v0

    goto :goto_4

    .line 258
    :catch_a
    move-exception v0

    goto :goto_5

    .line 257
    :catch_b
    move-exception v0

    goto/16 :goto_6

    .line 259
    .end local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_c
    move-exception v0

    move-object/from16 v9, v21

    .end local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    goto :goto_4

    .line 258
    .end local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_d
    move-exception v0

    move-object/from16 v9, v21

    .end local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    goto :goto_5

    .line 257
    .end local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_e
    move-exception v0

    move-object/from16 v9, v21

    .end local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    goto :goto_6

    .line 259
    .end local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v17    # "classname":Ljava/lang/String;
    .local v15, "classname":Ljava/lang/String;
    .restart local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_f
    move-exception v0

    move-object/from16 v17, v15

    move-object/from16 v9, v21

    .end local v15    # "classname":Ljava/lang/String;
    .end local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v17    # "classname":Ljava/lang/String;
    goto :goto_4

    .line 258
    .end local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v17    # "classname":Ljava/lang/String;
    .restart local v15    # "classname":Ljava/lang/String;
    .restart local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_10
    move-exception v0

    move-object/from16 v17, v15

    move-object/from16 v9, v21

    .end local v15    # "classname":Ljava/lang/String;
    .end local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v17    # "classname":Ljava/lang/String;
    goto :goto_5

    .line 257
    .end local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v17    # "classname":Ljava/lang/String;
    .restart local v15    # "classname":Ljava/lang/String;
    .restart local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    :catch_11
    move-exception v0

    move-object/from16 v17, v15

    move-object/from16 v9, v21

    .end local v15    # "classname":Ljava/lang/String;
    .end local v21    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v9    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v17    # "classname":Ljava/lang/String;
    goto :goto_6

    .line 259
    .end local v13    # "jc":Ljavassist/compiler/Javac;
    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "classname":Ljava/lang/String;
    .end local v22    # "cp":Ljavassist/ClassPool;
    .end local v23    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v3, "constPool":Ljavassist/bytecode/ConstPool;
    .local v7, "ca":Ljavassist/bytecode/CodeAttribute;
    .local v8, "cp":Ljavassist/ClassPool;
    .local v9, "jc":Ljavassist/compiler/Javac;
    .local v10, "signature":Ljava/lang/String;
    .restart local v11    # "methodname":Ljava/lang/String;
    .restart local v15    # "classname":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v22, v8

    move-object v13, v9

    move-object/from16 v16, v10

    move-object v3, v11

    move-object/from16 v17, v15

    move-object v9, v7

    .line 260
    .end local v7    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v8    # "cp":Ljavassist/ClassPool;
    .end local v10    # "signature":Ljava/lang/String;
    .end local v11    # "methodname":Ljava/lang/String;
    .end local v15    # "classname":Ljava/lang/String;
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    .local v3, "methodname":Ljava/lang/String;
    .local v9, "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v13    # "jc":Ljavassist/compiler/Javac;
    .restart local v16    # "signature":Ljava/lang/String;
    .restart local v17    # "classname":Ljava/lang/String;
    .restart local v22    # "cp":Ljavassist/ClassPool;
    .restart local v23    # "constPool":Ljavassist/bytecode/ConstPool;
    :goto_4
    new-instance v6, Ljavassist/CannotCompileException;

    const-string v7, "broken method"

    invoke-direct {v6, v7}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 258
    .end local v0    # "e":Ljavassist/bytecode/BadBytecode;
    .end local v13    # "jc":Ljavassist/compiler/Javac;
    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "classname":Ljava/lang/String;
    .end local v22    # "cp":Ljavassist/ClassPool;
    .end local v23    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v3, "constPool":Ljavassist/bytecode/ConstPool;
    .restart local v7    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v8    # "cp":Ljavassist/ClassPool;
    .local v9, "jc":Ljavassist/compiler/Javac;
    .restart local v10    # "signature":Ljava/lang/String;
    .restart local v11    # "methodname":Ljava/lang/String;
    .restart local v15    # "classname":Ljava/lang/String;
    :catch_13
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v22, v8

    move-object v13, v9

    move-object/from16 v16, v10

    move-object v3, v11

    move-object/from16 v17, v15

    move-object v9, v7

    .end local v7    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v8    # "cp":Ljavassist/ClassPool;
    .end local v10    # "signature":Ljava/lang/String;
    .end local v11    # "methodname":Ljava/lang/String;
    .end local v15    # "classname":Ljava/lang/String;
    .local v0, "e":Ljavassist/NotFoundException;
    .local v3, "methodname":Ljava/lang/String;
    .local v9, "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v13    # "jc":Ljavassist/compiler/Javac;
    .restart local v16    # "signature":Ljava/lang/String;
    .restart local v17    # "classname":Ljava/lang/String;
    .restart local v22    # "cp":Ljavassist/ClassPool;
    .restart local v23    # "constPool":Ljavassist/bytecode/ConstPool;
    :goto_5
    new-instance v6, Ljavassist/CannotCompileException;

    invoke-direct {v6, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v6

    .line 257
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v13    # "jc":Ljavassist/compiler/Javac;
    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "classname":Ljava/lang/String;
    .end local v22    # "cp":Ljavassist/ClassPool;
    .end local v23    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v3, "constPool":Ljavassist/bytecode/ConstPool;
    .restart local v7    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v8    # "cp":Ljavassist/ClassPool;
    .local v9, "jc":Ljavassist/compiler/Javac;
    .restart local v10    # "signature":Ljava/lang/String;
    .restart local v11    # "methodname":Ljava/lang/String;
    .restart local v15    # "classname":Ljava/lang/String;
    :catch_14
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v22, v8

    move-object v13, v9

    move-object/from16 v16, v10

    move-object v3, v11

    move-object/from16 v17, v15

    move-object v9, v7

    .end local v7    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v8    # "cp":Ljavassist/ClassPool;
    .end local v10    # "signature":Ljava/lang/String;
    .end local v11    # "methodname":Ljava/lang/String;
    .end local v15    # "classname":Ljava/lang/String;
    .local v0, "e":Ljavassist/compiler/CompileError;
    .local v3, "methodname":Ljava/lang/String;
    .local v9, "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v13    # "jc":Ljavassist/compiler/Javac;
    .restart local v16    # "signature":Ljava/lang/String;
    .restart local v17    # "classname":Ljava/lang/String;
    .restart local v22    # "cp":Ljavassist/ClassPool;
    .restart local v23    # "constPool":Ljavassist/bytecode/ConstPool;
    :goto_6
    new-instance v6, Ljavassist/CannotCompileException;

    invoke-direct {v6, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v6
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 62
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
