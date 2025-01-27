.class public Ljavassist/expr/FieldAccess;
.super Ljavassist/expr/Expr;
.source "FieldAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/FieldAccess$ProceedForWrite;,
        Ljavassist/expr/FieldAccess$ProceedForRead;
    }
.end annotation


# instance fields
.field opcode:I


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "i"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "declaring"    # Ljavassist/CtClass;
    .param p4, "m"    # Ljavassist/bytecode/MethodInfo;
    .param p5, "op"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 50
    iput p5, p0, Ljavassist/expr/FieldAccess;->opcode:I

    .line 51
    return-void
.end method

.method private getCtClass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method static isStatic(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 89
    const/16 v0, 0xb2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 117
    iget-object v0, p0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/FieldAccess;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 118
    .local v0, "index":I
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getField()Ljavassist/CtField;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljavassist/expr/FieldAccess;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    .line 134
    .local v0, "cc":Ljavassist/CtClass;
    iget-object v1, p0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v2, p0, Ljavassist/expr/FieldAccess;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v1

    .line 135
    .local v1, "index":I
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 136
    .local v2, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v2, v1}, Ljavassist/bytecode/ConstPool;->getFieldrefName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavassist/CtClass;->getField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v3

    return-object v3
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 2

    .line 125
    iget-object v0, p0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/FieldAccess;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 126
    .local v0, "index":I
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFieldrefName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 68
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 159
    iget-object v0, p0, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/FieldAccess;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 160
    .local v0, "index":I
    invoke-virtual {p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isReader()Z
    .locals 2

    .line 96
    iget v0, p0, Ljavassist/expr/FieldAccess;->opcode:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 85
    iget v0, p0, Ljavassist/expr/FieldAccess;->opcode:I

    invoke-static {v0}, Ljavassist/expr/FieldAccess;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public isWriter()Z
    .locals 2

    .line 103
    iget v0, p0, Ljavassist/expr/FieldAccess;->opcode:I

    const/16 v1, 0xb5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .line 147
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 20
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 175
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 176
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    .line 177
    .local v3, "constPool":Ljavassist/bytecode/ConstPool;
    iget v4, v1, Ljavassist/expr/FieldAccess;->currentPos:I

    .line 178
    .local v4, "pos":I
    iget-object v0, v1, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v5

    .line 180
    .local v5, "index":I
    new-instance v0, Ljavassist/compiler/Javac;

    iget-object v6, v1, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    invoke-direct {v0, v6}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    move-object v6, v0

    .line 181
    .local v6, "jc":Ljavassist/compiler/Javac;
    iget-object v0, v1, Ljavassist/expr/FieldAccess;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v13

    .line 185
    .local v13, "ca":Ljavassist/bytecode/CodeAttribute;
    nop

    .line 186
    :try_start_0
    invoke-virtual {v3, v5}, Ljavassist/bytecode/ConstPool;->getFieldrefType(I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Ljavassist/expr/FieldAccess;->thisClass:Ljavassist/CtClass;

    .line 187
    invoke-virtual {v7}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v7

    .line 186
    invoke-static {v0, v7}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v0

    .line 188
    .local v0, "fieldType":Ljavassist/CtClass;
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->isReader()Z

    move-result v7
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_6

    move v14, v7

    .line 189
    .local v14, "read":Z
    const/4 v15, 0x0

    const/4 v12, 0x1

    if-eqz v14, :cond_0

    .line 190
    :try_start_1
    new-array v7, v15, [Ljavassist/CtClass;
    :try_end_1
    .catch Ljavassist/compiler/CompileError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    .local v7, "params":[Ljavassist/CtClass;
    move-object v8, v0

    move-object v11, v7

    move-object v10, v8

    .local v8, "retType":Ljavassist/CtClass;
    goto :goto_0

    .line 242
    .end local v0    # "fieldType":Ljavassist/CtClass;
    .end local v7    # "params":[Ljavassist/CtClass;
    .end local v8    # "retType":Ljavassist/CtClass;
    .end local v14    # "read":Z
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_3

    .line 241
    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_4

    .line 240
    :catch_2
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_5

    .line 194
    .restart local v0    # "fieldType":Ljavassist/CtClass;
    .restart local v14    # "read":Z
    :cond_0
    :try_start_2
    new-array v7, v12, [Ljavassist/CtClass;

    .line 195
    .restart local v7    # "params":[Ljavassist/CtClass;
    aput-object v0, v7, v15

    .line 196
    sget-object v8, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    move-object v11, v7

    move-object v10, v8

    .line 199
    .end local v7    # "params":[Ljavassist/CtClass;
    .local v10, "retType":Ljavassist/CtClass;
    .local v11, "params":[Ljavassist/CtClass;
    :goto_0
    invoke-virtual {v13}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v7

    move v9, v7

    .line 200
    .local v9, "paramVar":I
    invoke-virtual {v3, v5}, Ljavassist/bytecode/ConstPool;->getFieldrefClassName(I)Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x1

    .line 201
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->withinStatic()Z

    move-result v17
    :try_end_2
    .catch Ljavassist/compiler/CompileError; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavassist/NotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_2 .. :try_end_2} :catch_6

    .line 200
    move-object v7, v6

    move/from16 v18, v9

    .end local v9    # "paramVar":I
    .local v18, "paramVar":I
    move-object v9, v11

    move-object v15, v10

    .end local v10    # "retType":Ljavassist/CtClass;
    .local v15, "retType":Ljavassist/CtClass;
    move/from16 v10, v16

    move-object/from16 v19, v11

    .end local v11    # "params":[Ljavassist/CtClass;
    .local v19, "params":[Ljavassist/CtClass;
    move/from16 v11, v18

    move-object/from16 v16, v3

    move v3, v12

    .end local v3    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v16, "constPool":Ljavassist/bytecode/ConstPool;
    move/from16 v12, v17

    :try_start_3
    invoke-virtual/range {v7 .. v12}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    .line 205
    invoke-static {v15, v2}, Ljavassist/expr/FieldAccess;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    move-result v7

    .line 206
    .local v7, "included":Z
    if-eqz v14, :cond_1

    .line 207
    const/4 v7, 0x1

    .line 209
    :cond_1
    invoke-virtual {v6, v15, v7}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v8

    .line 210
    .local v8, "retVar":I
    if-eqz v14, :cond_2

    .line 211
    new-instance v9, Ljavassist/expr/FieldAccess$ProceedForRead;

    iget v10, v1, Ljavassist/expr/FieldAccess;->opcode:I

    move/from16 v11, v18

    .end local v18    # "paramVar":I
    .local v11, "paramVar":I
    invoke-direct {v9, v15, v10, v5, v11}, Ljavassist/expr/FieldAccess$ProceedForRead;-><init>(Ljavassist/CtClass;III)V

    invoke-virtual {v6, v9}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    move-object/from16 v10, v19

    goto :goto_1

    .line 215
    .end local v11    # "paramVar":I
    .restart local v18    # "paramVar":I
    :cond_2
    move/from16 v11, v18

    .end local v18    # "paramVar":I
    .restart local v11    # "paramVar":I
    invoke-virtual {v6, v0}, Ljavassist/compiler/Javac;->recordType(Ljavassist/CtClass;)V

    .line 216
    new-instance v9, Ljavassist/expr/FieldAccess$ProceedForWrite;

    move-object/from16 v10, v19

    const/4 v12, 0x0

    .end local v19    # "params":[Ljavassist/CtClass;
    .local v10, "params":[Ljavassist/CtClass;
    aget-object v12, v10, v12

    iget v3, v1, Ljavassist/expr/FieldAccess;->opcode:I

    invoke-direct {v9, v12, v3, v5, v11}, Ljavassist/expr/FieldAccess$ProceedForWrite;-><init>(Ljavassist/CtClass;III)V

    invoke-virtual {v6, v9}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    .line 220
    :goto_1
    invoke-virtual {v6}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v3

    .line 221
    .local v3, "bytecode":Ljavassist/bytecode/Bytecode;
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/FieldAccess;->isStatic()Z

    move-result v9

    invoke-static {v10, v9, v11, v3}, Ljavassist/expr/FieldAccess;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V

    .line 222
    invoke-virtual {v6, v13, v4}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 224
    if-eqz v7, :cond_4

    .line 225
    sget-object v9, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne v15, v9, :cond_3

    .line 226
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 227
    invoke-virtual {v3, v8}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    goto :goto_2

    .line 230
    :cond_3
    invoke-virtual {v3, v15}, Ljavassist/bytecode/Bytecode;->addConstZero(Ljavassist/CtClass;)V

    .line 231
    invoke-virtual {v3, v8, v15}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 234
    :cond_4
    :goto_2
    invoke-virtual {v6, v2}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 235
    if-eqz v14, :cond_5

    .line 236
    invoke-virtual {v3, v8, v15}, Ljavassist/bytecode/Bytecode;->addLoad(ILjavassist/CtClass;)I

    .line 238
    :cond_5
    const/4 v9, 0x3

    invoke-virtual {v1, v4, v3, v9}, Ljavassist/expr/FieldAccess;->replace0(ILjavassist/bytecode/Bytecode;I)V
    :try_end_3
    .catch Ljavassist/compiler/CompileError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavassist/NotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_3 .. :try_end_3} :catch_3

    .line 244
    .end local v0    # "fieldType":Ljavassist/CtClass;
    .end local v3    # "bytecode":Ljavassist/bytecode/Bytecode;
    .end local v7    # "included":Z
    .end local v8    # "retVar":I
    .end local v10    # "params":[Ljavassist/CtClass;
    .end local v11    # "paramVar":I
    .end local v14    # "read":Z
    .end local v15    # "retType":Ljavassist/CtClass;
    nop

    .line 245
    return-void

    .line 242
    :catch_3
    move-exception v0

    goto :goto_3

    .line 241
    :catch_4
    move-exception v0

    goto :goto_4

    .line 240
    :catch_5
    move-exception v0

    goto :goto_5

    .line 242
    .end local v16    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v3, "constPool":Ljavassist/bytecode/ConstPool;
    :catch_6
    move-exception v0

    move-object/from16 v16, v3

    .line 243
    .end local v3    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    .restart local v16    # "constPool":Ljavassist/bytecode/ConstPool;
    :goto_3
    new-instance v3, Ljavassist/CannotCompileException;

    const-string v7, "broken method"

    invoke-direct {v3, v7}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    .end local v0    # "e":Ljavassist/bytecode/BadBytecode;
    .end local v16    # "constPool":Ljavassist/bytecode/ConstPool;
    .restart local v3    # "constPool":Ljavassist/bytecode/ConstPool;
    :catch_7
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v0, "e":Ljavassist/NotFoundException;
    .restart local v16    # "constPool":Ljavassist/bytecode/ConstPool;
    :goto_4
    new-instance v3, Ljavassist/CannotCompileException;

    invoke-direct {v3, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v3

    .line 240
    .end local v0    # "e":Ljavassist/NotFoundException;
    .end local v16    # "constPool":Ljavassist/bytecode/ConstPool;
    .restart local v3    # "constPool":Ljavassist/bytecode/ConstPool;
    :catch_8
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "constPool":Ljavassist/bytecode/ConstPool;
    .local v0, "e":Ljavassist/compiler/CompileError;
    .restart local v16    # "constPool":Ljavassist/bytecode/ConstPool;
    :goto_5
    new-instance v3, Ljavassist/CannotCompileException;

    invoke-direct {v3, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v3
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 58
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
