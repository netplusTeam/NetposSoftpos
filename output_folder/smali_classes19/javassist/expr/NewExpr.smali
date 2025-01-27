.class public Ljavassist/expr/NewExpr;
.super Ljavassist/expr/Expr;
.source "NewExpr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/NewExpr$ProceedForNew;
    }
.end annotation


# instance fields
.field newPos:I

.field newTypeName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "i"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "declaring"    # Ljavassist/CtClass;
    .param p4, "m"    # Ljavassist/bytecode/MethodInfo;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "np"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 53
    iput-object p5, p0, Ljavassist/expr/NewExpr;->newTypeName:Ljava/lang/String;

    .line 54
    iput p6, p0, Ljavassist/expr/NewExpr;->newPos:I

    .line 55
    return-void
.end method

.method private canReplace()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/NewExpr;->newPos:I

    const/4 v2, 0x3

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 163
    .local v0, "op":I
    const/4 v1, 0x5

    const/4 v3, 0x4

    const/16 v4, 0x59

    if-ne v0, v4, :cond_1

    .line 164
    iget-object v2, p0, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v4, p0, Ljavassist/expr/NewExpr;->newPos:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    const/16 v4, 0x5e

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v4, p0, Ljavassist/expr/NewExpr;->newPos:I

    add-int/2addr v4, v1

    .line 165
    invoke-virtual {v2, v4}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v1

    const/16 v2, 0x58

    if-ne v1, v2, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :cond_0
    nop

    .line 164
    :goto_0
    return v3

    .line 166
    :cond_1
    const/16 v4, 0x5a

    if-ne v0, v4, :cond_2

    iget-object v4, p0, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v5, p0, Ljavassist/expr/NewExpr;->newPos:I

    add-int/2addr v5, v3

    .line 167
    invoke-virtual {v4, v5}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_2

    .line 168
    return v1

    .line 170
    :cond_2
    return v2
.end method

.method private getCtClass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Ljavassist/expr/NewExpr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    iget-object v1, p0, Ljavassist/expr/NewExpr;->newTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Ljavassist/expr/NewExpr;->newTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getConstructor()Ljavassist/CtConstructor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Ljavassist/expr/NewExpr;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 134
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v1, p0, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v2, p0, Ljavassist/expr/NewExpr;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 135
    .local v1, "index":I
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "desc":Ljava/lang/String;
    invoke-direct {p0}, Ljavassist/expr/NewExpr;->getCtClass()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavassist/CtClass;->getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;

    move-result-object v3

    return-object v3
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 96
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 86
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .line 124
    invoke-virtual {p0}, Ljavassist/expr/NewExpr;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 125
    .local v0, "constPool":Ljavassist/bytecode/ConstPool;
    iget-object v1, p0, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v2, p0, Ljavassist/expr/NewExpr;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 126
    .local v1, "methodIndex":I
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .line 147
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 22
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 185
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Ljavassist/expr/NewExpr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 187
    const/4 v3, 0x3

    .line 188
    .local v3, "bytecodeSize":I
    iget v0, v1, Ljavassist/expr/NewExpr;->newPos:I

    .line 190
    .local v0, "pos":I
    iget-object v4, v1, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v4

    .line 194
    .local v4, "newIndex":I
    invoke-direct/range {p0 .. p0}, Ljavassist/expr/NewExpr;->canReplace()I

    move-result v5

    .line 195
    .local v5, "codeSize":I
    add-int v6, v0, v5

    .line 196
    .local v6, "end":I
    move v7, v0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 197
    iget-object v8, v1, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 196
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 199
    .end local v7    # "i":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/NewExpr;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v7

    .line 200
    .local v7, "constPool":Ljavassist/bytecode/ConstPool;
    iget v8, v1, Ljavassist/expr/NewExpr;->currentPos:I

    .line 201
    .end local v0    # "pos":I
    .local v8, "pos":I
    iget-object v0, v1, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v9}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v9

    .line 203
    .local v9, "methodIndex":I
    invoke-virtual {v7, v9}, Ljavassist/bytecode/ConstPool;->getMethodrefType(I)Ljava/lang/String;

    move-result-object v10

    .line 205
    .local v10, "signature":Ljava/lang/String;
    new-instance v0, Ljavassist/compiler/Javac;

    iget-object v11, v1, Ljavassist/expr/NewExpr;->thisClass:Ljavassist/CtClass;

    invoke-direct {v0, v11}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    move-object v11, v0

    .line 206
    .local v11, "jc":Ljavassist/compiler/Javac;
    iget-object v0, v1, Ljavassist/expr/NewExpr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v15

    .line 207
    .local v15, "cp":Ljavassist/ClassPool;
    iget-object v0, v1, Ljavassist/expr/NewExpr;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v14

    .line 209
    .local v14, "ca":Ljavassist/bytecode/CodeAttribute;
    :try_start_0
    invoke-static {v10, v15}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v0

    .line 210
    .local v0, "params":[Ljavassist/CtClass;
    iget-object v12, v1, Ljavassist/expr/NewExpr;->newTypeName:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v12

    move-object v13, v12

    .line 211
    .local v13, "newType":Ljavassist/CtClass;
    invoke-virtual {v14}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v12
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_9

    .line 212
    .local v12, "paramVar":I
    move/from16 v18, v3

    .end local v3    # "bytecodeSize":I
    .local v18, "bytecodeSize":I
    :try_start_1
    iget-object v3, v1, Ljavassist/expr/NewExpr;->newTypeName:Ljava/lang/String;

    const/16 v16, 0x1

    .line 213
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/NewExpr;->withinStatic()Z

    move-result v17
    :try_end_1
    .catch Ljavassist/compiler/CompileError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_6

    .line 212
    move/from16 v19, v12

    .end local v12    # "paramVar":I
    .local v19, "paramVar":I
    move-object v12, v11

    move-object/from16 v20, v13

    .end local v13    # "newType":Ljavassist/CtClass;
    .local v20, "newType":Ljavassist/CtClass;
    move-object v13, v3

    move-object v3, v14

    .end local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .local v3, "ca":Ljavassist/bytecode/CodeAttribute;
    move-object v14, v0

    move-object/from16 v21, v15

    .end local v15    # "cp":Ljavassist/ClassPool;
    .local v21, "cp":Ljavassist/ClassPool;
    move/from16 v15, v16

    move/from16 v16, v19

    :try_start_2
    invoke-virtual/range {v12 .. v17}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    .line 214
    const/4 v12, 0x1

    move-object/from16 v13, v20

    .end local v20    # "newType":Ljavassist/CtClass;
    .restart local v13    # "newType":Ljavassist/CtClass;
    invoke-virtual {v11, v13, v12}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v14

    .line 215
    .local v14, "retVar":I
    new-instance v15, Ljavassist/expr/NewExpr$ProceedForNew;

    invoke-direct {v15, v13, v4, v9}, Ljavassist/expr/NewExpr$ProceedForNew;-><init>(Ljavassist/CtClass;II)V

    invoke-virtual {v11, v15}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    .line 220
    invoke-static {v13, v2}, Ljavassist/expr/NewExpr;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    .line 222
    invoke-virtual {v11}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v15
    :try_end_2
    .catch Ljavassist/compiler/CompileError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavassist/NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_2 .. :try_end_2} :catch_3

    .line 223
    .local v15, "bytecode":Ljavassist/bytecode/Bytecode;
    move/from16 v16, v4

    move/from16 v4, v19

    .end local v19    # "paramVar":I
    .local v4, "paramVar":I
    .local v16, "newIndex":I
    :try_start_3
    invoke-static {v0, v12, v4, v15}, Ljavassist/expr/NewExpr;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V

    .line 224
    invoke-virtual {v11, v3, v8}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 226
    invoke-virtual {v15, v13}, Ljavassist/bytecode/Bytecode;->addConstZero(Ljavassist/CtClass;)V

    .line 227
    invoke-virtual {v15, v14, v13}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 229
    invoke-virtual {v11, v2}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 230
    const/4 v12, 0x3

    if-le v5, v12, :cond_1

    .line 231
    invoke-virtual {v15, v14}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 233
    :cond_1
    invoke-virtual {v1, v8, v15, v12}, Ljavassist/expr/NewExpr;->replace0(ILjavassist/bytecode/Bytecode;I)V
    :try_end_3
    .catch Ljavassist/compiler/CompileError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavassist/NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_3 .. :try_end_3} :catch_0

    .line 239
    .end local v0    # "params":[Ljavassist/CtClass;
    .end local v4    # "paramVar":I
    .end local v13    # "newType":Ljavassist/CtClass;
    .end local v14    # "retVar":I
    .end local v15    # "bytecode":Ljavassist/bytecode/Bytecode;
    nop

    .line 240
    return-void

    .line 237
    :catch_0
    move-exception v0

    goto :goto_1

    .line 236
    :catch_1
    move-exception v0

    goto :goto_2

    .line 235
    :catch_2
    move-exception v0

    goto :goto_3

    .line 237
    .end local v16    # "newIndex":I
    .local v4, "newIndex":I
    :catch_3
    move-exception v0

    move/from16 v16, v4

    .end local v4    # "newIndex":I
    .restart local v16    # "newIndex":I
    goto :goto_1

    .line 236
    .end local v16    # "newIndex":I
    .restart local v4    # "newIndex":I
    :catch_4
    move-exception v0

    move/from16 v16, v4

    .end local v4    # "newIndex":I
    .restart local v16    # "newIndex":I
    goto :goto_2

    .line 235
    .end local v16    # "newIndex":I
    .restart local v4    # "newIndex":I
    :catch_5
    move-exception v0

    move/from16 v16, v4

    .end local v4    # "newIndex":I
    .restart local v16    # "newIndex":I
    goto :goto_3

    .line 237
    .end local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v16    # "newIndex":I
    .end local v21    # "cp":Ljavassist/ClassPool;
    .restart local v4    # "newIndex":I
    .local v14, "ca":Ljavassist/bytecode/CodeAttribute;
    .local v15, "cp":Ljavassist/ClassPool;
    :catch_6
    move-exception v0

    move/from16 v16, v4

    move-object v3, v14

    move-object/from16 v21, v15

    .end local v4    # "newIndex":I
    .end local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v15    # "cp":Ljavassist/ClassPool;
    .restart local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v16    # "newIndex":I
    .restart local v21    # "cp":Ljavassist/ClassPool;
    goto :goto_1

    .line 236
    .end local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v16    # "newIndex":I
    .end local v21    # "cp":Ljavassist/ClassPool;
    .restart local v4    # "newIndex":I
    .restart local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v15    # "cp":Ljavassist/ClassPool;
    :catch_7
    move-exception v0

    move/from16 v16, v4

    move-object v3, v14

    move-object/from16 v21, v15

    .end local v4    # "newIndex":I
    .end local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v15    # "cp":Ljavassist/ClassPool;
    .restart local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v16    # "newIndex":I
    .restart local v21    # "cp":Ljavassist/ClassPool;
    goto :goto_2

    .line 235
    .end local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v16    # "newIndex":I
    .end local v21    # "cp":Ljavassist/ClassPool;
    .restart local v4    # "newIndex":I
    .restart local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v15    # "cp":Ljavassist/ClassPool;
    :catch_8
    move-exception v0

    move/from16 v16, v4

    move-object v3, v14

    move-object/from16 v21, v15

    .end local v4    # "newIndex":I
    .end local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v15    # "cp":Ljavassist/ClassPool;
    .restart local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v16    # "newIndex":I
    .restart local v21    # "cp":Ljavassist/ClassPool;
    goto :goto_3

    .line 237
    .end local v16    # "newIndex":I
    .end local v18    # "bytecodeSize":I
    .end local v21    # "cp":Ljavassist/ClassPool;
    .local v3, "bytecodeSize":I
    .restart local v4    # "newIndex":I
    .restart local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v15    # "cp":Ljavassist/ClassPool;
    :catch_9
    move-exception v0

    move/from16 v18, v3

    move/from16 v16, v4

    move-object v3, v14

    move-object/from16 v21, v15

    .line 238
    .end local v4    # "newIndex":I
    .end local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v15    # "cp":Ljavassist/ClassPool;
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    .local v3, "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v16    # "newIndex":I
    .restart local v18    # "bytecodeSize":I
    .restart local v21    # "cp":Ljavassist/ClassPool;
    :goto_1
    new-instance v4, Ljavassist/CannotCompileException;

    const-string v12, "broken method"

    invoke-direct {v4, v12}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    .end local v0    # "e":Ljavassist/bytecode/BadBytecode;
    .end local v16    # "newIndex":I
    .end local v18    # "bytecodeSize":I
    .end local v21    # "cp":Ljavassist/ClassPool;
    .local v3, "bytecodeSize":I
    .restart local v4    # "newIndex":I
    .restart local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v15    # "cp":Ljavassist/ClassPool;
    :catch_a
    move-exception v0

    move/from16 v18, v3

    move/from16 v16, v4

    move-object v3, v14

    move-object/from16 v21, v15

    .end local v4    # "newIndex":I
    .end local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v15    # "cp":Ljavassist/ClassPool;
    .local v0, "e":Ljavassist/NotFoundException;
    .local v3, "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v16    # "newIndex":I
    .restart local v18    # "bytecodeSize":I
    .restart local v21    # "cp":Ljavassist/ClassPool;
    :goto_2
    new-instance v4, Ljavassist/CannotCompileException;

    invoke-direct {v4, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v4

    .line 235
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v16    # "newIndex":I
    .end local v18    # "bytecodeSize":I
    .end local v21    # "cp":Ljavassist/ClassPool;
    .local v3, "bytecodeSize":I
    .restart local v4    # "newIndex":I
    .restart local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v15    # "cp":Ljavassist/ClassPool;
    :catch_b
    move-exception v0

    move/from16 v18, v3

    move/from16 v16, v4

    move-object v3, v14

    move-object/from16 v21, v15

    .end local v4    # "newIndex":I
    .end local v14    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v15    # "cp":Ljavassist/ClassPool;
    .local v0, "e":Ljavassist/compiler/CompileError;
    .local v3, "ca":Ljavassist/bytecode/CodeAttribute;
    .restart local v16    # "newIndex":I
    .restart local v18    # "bytecodeSize":I
    .restart local v21    # "cp":Ljavassist/ClassPool;
    :goto_3
    new-instance v4, Ljavassist/CannotCompileException;

    invoke-direct {v4, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v4
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 76
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
