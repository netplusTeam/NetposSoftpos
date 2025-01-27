.class public Ljavassist/expr/Instanceof;
.super Ljavassist/expr/Expr;
.source "Instanceof.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/Instanceof$ProceedForInstanceof;
    }
.end annotation


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "i"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "declaring"    # Ljavassist/CtClass;
    .param p4, "m"    # Ljavassist/bytecode/MethodInfo;

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 65
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getType()Ljavassist/CtClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Ljavassist/expr/Instanceof;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 86
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    iget v1, p0, Ljavassist/expr/Instanceof;->currentPos:I

    .line 87
    .local v1, "pos":I
    iget-object v2, p0, Ljavassist/expr/Instanceof;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v2

    .line 88
    .local v2, "index":I
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Ljavassist/expr/Instanceof;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v4}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljavassist/ClassPool;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v4

    return-object v4
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .line 100
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 19
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 113
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Ljavassist/expr/Instanceof;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 115
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/Instanceof;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 116
    .local v3, "constPool":Ljavassist/bytecode/ConstPool;
    iget v4, v1, Ljavassist/expr/Instanceof;->currentPos:I

    .line 117
    .local v4, "pos":I
    iget-object v0, v1, Ljavassist/expr/Instanceof;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v5

    .line 119
    .local v5, "index":I
    new-instance v0, Ljavassist/compiler/Javac;

    iget-object v6, v1, Ljavassist/expr/Instanceof;->thisClass:Ljavassist/CtClass;

    invoke-direct {v0, v6}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    move-object v6, v0

    .line 120
    .local v6, "jc":Ljavassist/compiler/Javac;
    iget-object v0, v1, Ljavassist/expr/Instanceof;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v13

    .line 121
    .local v13, "cp":Ljavassist/ClassPool;
    iget-object v0, v1, Ljavassist/expr/Instanceof;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v14

    .line 124
    .local v14, "ca":Ljavassist/bytecode/CodeAttribute;
    const/4 v0, 0x1

    :try_start_0
    new-array v7, v0, [Ljavassist/CtClass;

    const/4 v8, 0x0

    const-string v9, "java.lang.Object"

    .line 125
    invoke-virtual {v13, v9}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v15, v7

    .line 126
    .local v15, "params":[Ljavassist/CtClass;
    sget-object v7, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    move-object v12, v7

    .line 128
    .local v12, "retType":Ljavassist/CtClass;
    invoke-virtual {v14}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v7

    move v11, v7

    .line 129
    .local v11, "paramVar":I
    const-string v8, "java.lang.Object"

    const/4 v10, 0x1

    .line 130
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/Instanceof;->withinStatic()Z

    move-result v16
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_3

    .line 129
    move-object v7, v6

    move-object v9, v15

    move/from16 v17, v11

    .end local v11    # "paramVar":I
    .local v17, "paramVar":I
    move-object/from16 v18, v3

    move-object v3, v12

    .end local v12    # "retType":Ljavassist/CtClass;
    .local v3, "retType":Ljavassist/CtClass;
    .local v18, "constPool":Ljavassist/bytecode/ConstPool;
    move/from16 v12, v16

    :try_start_1
    invoke-virtual/range {v7 .. v12}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    .line 131
    invoke-virtual {v6, v3, v0}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v7

    .line 132
    .local v7, "retVar":I
    new-instance v8, Ljavassist/expr/Instanceof$ProceedForInstanceof;

    invoke-direct {v8, v5}, Ljavassist/expr/Instanceof$ProceedForInstanceof;-><init>(I)V

    invoke-virtual {v6, v8}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/Instanceof;->getType()Ljavassist/CtClass;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljavassist/compiler/Javac;->recordType(Ljavassist/CtClass;)V

    .line 139
    invoke-static {v3, v2}, Ljavassist/expr/Instanceof;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    .line 141
    invoke-virtual {v6}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v8

    .line 142
    .local v8, "bytecode":Ljavassist/bytecode/Bytecode;
    move/from16 v9, v17

    .end local v17    # "paramVar":I
    .local v9, "paramVar":I
    invoke-static {v15, v0, v9, v8}, Ljavassist/expr/Instanceof;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V

    .line 143
    invoke-virtual {v6, v14, v4}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 145
    invoke-virtual {v8, v3}, Ljavassist/bytecode/Bytecode;->addConstZero(Ljavassist/CtClass;)V

    .line 146
    invoke-virtual {v8, v7, v3}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 148
    invoke-virtual {v6, v2}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v8, v7, v3}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 151
    const/4 v0, 0x3

    invoke-virtual {v1, v4, v8, v0}, Ljavassist/expr/Instanceof;->replace0(ILjavassist/bytecode/Bytecode;I)V
    :try_end_1
    .catch Ljavassist/compiler/CompileError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    .end local v3    # "retType":Ljavassist/CtClass;
    .end local v7    # "retVar":I
    .end local v8    # "bytecode":Ljavassist/bytecode/Bytecode;
    .end local v9    # "paramVar":I
    .end local v15    # "params":[Ljavassist/CtClass;
    nop

    .line 158
    return-void

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    goto :goto_1

    .line 153
    :catch_2
    move-exception v0

    goto :goto_2

    .line 155
    .end local v18    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v3, "constPool":Ljavassist/bytecode/ConstPool;
    :catch_3
    move-exception v0

    move-object/from16 v18, v3

    .line 156
    .end local v3    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    .restart local v18    # "constPool":Ljavassist/bytecode/ConstPool;
    :goto_0
    new-instance v3, Ljavassist/CannotCompileException;

    const-string v7, "broken method"

    invoke-direct {v3, v7}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    .end local v0    # "e":Ljavassist/bytecode/BadBytecode;
    .end local v18    # "constPool":Ljavassist/bytecode/ConstPool;
    .restart local v3    # "constPool":Ljavassist/bytecode/ConstPool;
    :catch_4
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v0, "e":Ljavassist/NotFoundException;
    .restart local v18    # "constPool":Ljavassist/bytecode/ConstPool;
    :goto_1
    new-instance v3, Ljavassist/CannotCompileException;

    invoke-direct {v3, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v3

    .line 153
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v18    # "constPool":Ljavassist/bytecode/ConstPool;
    .restart local v3    # "constPool":Ljavassist/bytecode/ConstPool;
    :catch_5
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v0, "e":Ljavassist/compiler/CompileError;
    .restart local v18    # "constPool":Ljavassist/bytecode/ConstPool;
    :goto_2
    new-instance v3, Ljavassist/CannotCompileException;

    invoke-direct {v3, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v3
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 55
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
