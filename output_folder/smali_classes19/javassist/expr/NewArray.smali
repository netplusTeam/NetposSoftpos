.class public Ljavassist/expr/NewArray;
.super Ljavassist/expr/Expr;
.source "NewArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/NewArray$ProceedForArray;
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

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 51
    iput p5, p0, Ljavassist/expr/NewArray;->opcode:I

    .line 52
    return-void
.end method

.method private replace2(Ljava/lang/String;)V
    .locals 20
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;,
            Ljavassist/NotFoundException;,
            Ljavassist/bytecode/BadBytecode;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ljavassist/expr/NewArray;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassFile()Ljavassist/bytecode/ClassFile;

    .line 194
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/NewArray;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    .line 195
    .local v2, "constPool":Ljavassist/bytecode/ConstPool;
    iget v3, v0, Ljavassist/expr/NewArray;->currentPos:I

    .line 198
    .local v3, "pos":I
    const/4 v4, 0x0

    .line 199
    .local v4, "index":I
    const/4 v5, 0x1

    .line 201
    .local v5, "dim":I
    iget v6, v0, Ljavassist/expr/NewArray;->opcode:I

    const-string v7, "["

    const/4 v8, 0x1

    const/16 v9, 0xbc

    if-ne v6, v9, :cond_0

    .line 202
    iget-object v6, v0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v9, v0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/2addr v9, v8

    invoke-virtual {v6, v9}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v4

    .line 203
    invoke-virtual {v0, v4}, Ljavassist/expr/NewArray;->getPrimitiveType(I)Ljavassist/CtClass;

    move-result-object v6

    check-cast v6, Ljavassist/CtPrimitiveType;

    .line 204
    .local v6, "cpt":Ljavassist/CtPrimitiveType;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljavassist/CtPrimitiveType;->getDescriptor()C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "desc":Ljava/lang/String;
    const/4 v6, 0x2

    .line 206
    .local v6, "codeLength":I
    goto :goto_1

    .line 207
    .end local v6    # "codeLength":I
    .end local v7    # "desc":Ljava/lang/String;
    :cond_0
    const/16 v9, 0xbd

    if-ne v6, v9, :cond_2

    .line 208
    iget-object v6, v0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v6, v9}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v4

    .line 209
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "desc":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 211
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    goto :goto_0

    .line 213
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[L"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 215
    .end local v6    # "desc":Ljava/lang/String;
    .restart local v7    # "desc":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x3

    .local v6, "codeLength":I
    goto :goto_1

    .line 217
    .end local v6    # "codeLength":I
    .end local v7    # "desc":Ljava/lang/String;
    :cond_2
    const/16 v7, 0xc5

    if-ne v6, v7, :cond_4

    .line 218
    iget-object v6, v0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v7, v0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v4

    .line 219
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v7

    .line 220
    .restart local v7    # "desc":Ljava/lang/String;
    iget-object v6, v0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v9, v0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v6, v9}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v5

    .line 221
    const/4 v6, 0x4

    .line 226
    .restart local v6    # "codeLength":I
    :goto_1
    iget-object v9, v0, Ljavassist/expr/NewArray;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v9}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v9

    invoke-static {v7, v9}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v9

    .line 228
    .local v9, "retType":Ljavassist/CtClass;
    new-instance v10, Ljavassist/compiler/Javac;

    iget-object v11, v0, Ljavassist/expr/NewArray;->thisClass:Ljavassist/CtClass;

    invoke-direct {v10, v11}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 229
    .local v10, "jc":Ljavassist/compiler/Javac;
    iget-object v11, v0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v11}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v11

    .line 231
    .local v11, "ca":Ljavassist/bytecode/CodeAttribute;
    new-array v15, v5, [Ljavassist/CtClass;

    .line 232
    .local v15, "params":[Ljavassist/CtClass;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v5, :cond_3

    .line 233
    sget-object v13, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    aput-object v13, v15, v12

    .line 232
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 235
    .end local v12    # "i":I
    :cond_3
    invoke-virtual {v11}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v14

    .line 236
    .local v14, "paramVar":I
    const/16 v16, 0x1

    .line 237
    invoke-virtual/range {p0 .. p0}, Ljavassist/expr/NewArray;->withinStatic()Z

    move-result v17

    .line 236
    const-string v13, "java.lang.Object"

    move-object v12, v10

    move/from16 v18, v14

    .end local v14    # "paramVar":I
    .local v18, "paramVar":I
    move-object v14, v15

    move-object/from16 v19, v15

    .end local v15    # "params":[Ljavassist/CtClass;
    .local v19, "params":[Ljavassist/CtClass;
    move/from16 v15, v16

    move/from16 v16, v18

    invoke-virtual/range {v12 .. v17}, Ljavassist/compiler/Javac;->recordParams(Ljava/lang/String;[Ljavassist/CtClass;ZIZ)I

    .line 241
    invoke-static {v9, v1}, Ljavassist/expr/NewArray;->checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z

    .line 242
    invoke-virtual {v10, v9, v8}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    move-result v12

    .line 243
    .local v12, "retVar":I
    new-instance v13, Ljavassist/expr/NewArray$ProceedForArray;

    iget v14, v0, Ljavassist/expr/NewArray;->opcode:I

    invoke-direct {v13, v9, v14, v4, v5}, Ljavassist/expr/NewArray$ProceedForArray;-><init>(Ljavassist/CtClass;III)V

    invoke-virtual {v10, v13}, Ljavassist/compiler/Javac;->recordProceed(Ljavassist/compiler/ProceedHandler;)V

    .line 245
    invoke-virtual {v10}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v13

    .line 246
    .local v13, "bytecode":Ljavassist/bytecode/Bytecode;
    move/from16 v15, v18

    move-object/from16 v14, v19

    .end local v18    # "paramVar":I
    .end local v19    # "params":[Ljavassist/CtClass;
    .local v14, "params":[Ljavassist/CtClass;
    .local v15, "paramVar":I
    invoke-static {v14, v8, v15, v13}, Ljavassist/expr/NewArray;->storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V

    .line 247
    invoke-virtual {v10, v11, v3}, Ljavassist/compiler/Javac;->recordLocalVariables(Ljavassist/bytecode/CodeAttribute;I)Z

    .line 249
    invoke-virtual {v13, v8}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 250
    invoke-virtual {v13, v12}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 252
    invoke-virtual {v10, v1}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v13, v12}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 255
    invoke-virtual {v0, v3, v13, v6}, Ljavassist/expr/NewArray;->replace0(ILjavassist/bytecode/Bytecode;I)V

    .line 256
    return-void

    .line 224
    .end local v6    # "codeLength":I
    .end local v7    # "desc":Ljava/lang/String;
    .end local v9    # "retType":Ljavassist/CtClass;
    .end local v10    # "jc":Ljavassist/compiler/Javac;
    .end local v11    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v12    # "retVar":I
    .end local v13    # "bytecode":Ljavassist/bytecode/Bytecode;
    .end local v14    # "params":[Ljavassist/CtClass;
    .end local v15    # "paramVar":I
    :cond_4
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad opcode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Ljavassist/expr/NewArray;->opcode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public getComponentType()Ljavassist/CtClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 100
    iget v0, p0, Ljavassist/expr/NewArray;->opcode:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    .line 102
    .local v0, "atype":I
    invoke-virtual {p0, v0}, Ljavassist/expr/NewArray;->getPrimitiveType(I)Ljavassist/CtClass;

    move-result-object v1

    return-object v1

    .line 104
    .end local v0    # "atype":I
    :cond_0
    const/16 v1, 0xbd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc5

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljavassist/expr/NewArray;->opcode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    :goto_0
    iget-object v0, p0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 107
    .local v0, "index":I
    invoke-virtual {p0}, Ljavassist/expr/NewArray;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "desc":Ljava/lang/String;
    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->arrayDimension(Ljava/lang/String;)I

    move-result v2

    .line 109
    .local v2, "dim":I
    invoke-static {v1, v2}, Ljavassist/bytecode/Descriptor;->toArrayComponent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v3, p0, Ljavassist/expr/NewArray;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {v1, v3}, Ljavassist/bytecode/Descriptor;->toCtClass(Ljava/lang/String;Ljavassist/ClassPool;)Ljavassist/CtClass;

    move-result-object v3

    return-object v3
.end method

.method public getCreatedDimensions()I
    .locals 2

    .line 162
    iget v0, p0, Ljavassist/expr/NewArray;->opcode:I

    const/16 v1, 0xc5

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v1, p0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v0

    return v0

    .line 164
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getDimension()I
    .locals 6

    .line 143
    iget v0, p0, Ljavassist/expr/NewArray;->opcode:I

    const/4 v1, 0x1

    const/16 v2, 0xbc

    if-ne v0, v2, :cond_0

    .line 144
    return v1

    .line 145
    :cond_0
    const/16 v2, 0xbd

    if-eq v0, v2, :cond_2

    const/16 v3, 0xc5

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljavassist/expr/NewArray;->opcode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    :goto_0
    iget-object v0, p0, Ljavassist/expr/NewArray;->iterator:Ljavassist/bytecode/CodeIterator;

    iget v3, p0, Ljavassist/expr/NewArray;->currentPos:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v0

    .line 148
    .local v0, "index":I
    invoke-virtual {p0}, Ljavassist/expr/NewArray;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "desc":Ljava/lang/String;
    invoke-static {v3}, Ljavassist/bytecode/Descriptor;->arrayDimension(Ljava/lang/String;)I

    move-result v4

    .line 150
    iget v5, p0, Ljavassist/expr/NewArray;->opcode:I

    if-ne v5, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v4, v1

    .line 149
    return v4
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 69
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method getPrimitiveType(I)Ljavassist/CtClass;
    .locals 3
    .param p1, "atype"    # I

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad atype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_0
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    return-object v0

    .line 131
    :pswitch_1
    sget-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    return-object v0

    .line 129
    :pswitch_2
    sget-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    return-object v0

    .line 127
    :pswitch_3
    sget-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    return-object v0

    .line 125
    :pswitch_4
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    return-object v0

    .line 123
    :pswitch_5
    sget-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    return-object v0

    .line 121
    :pswitch_6
    sget-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    return-object v0

    .line 119
    :pswitch_7
    sget-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .line 90
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 3
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 180
    :try_start_0
    invoke-direct {p0, p1}, Ljavassist/expr/NewArray;->replace2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    nop

    .line 187
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v1, Ljavassist/CannotCompileException;

    const-string v2, "broken method"

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    .end local v0    # "e":Ljavassist/bytecode/BadBytecode;
    :catch_1
    move-exception v0

    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v1

    .line 182
    .end local v0    # "e":Ljavassist/NotFoundException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljavassist/compiler/CompileError;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v1
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 59
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
