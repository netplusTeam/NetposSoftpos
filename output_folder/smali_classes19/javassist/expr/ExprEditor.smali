.class public Ljavassist/expr/ExprEditor;
.super Ljava/lang/Object;
.source "ExprEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/expr/ExprEditor$LoopContext;,
        Ljavassist/expr/ExprEditor$NewOp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Z
    .locals 17
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 87
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v9

    .line 88
    .local v9, "codeAttr":Ljavassist/bytecode/CodeAttribute;
    if-nez v9, :cond_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    invoke-virtual {v9}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v10

    .line 92
    .local v10, "iterator":Ljavassist/bytecode/CodeIterator;
    const/4 v0, 0x0

    .line 93
    .local v0, "edited":Z
    new-instance v2, Ljavassist/expr/ExprEditor$LoopContext;

    invoke-virtual {v9}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v3

    invoke-direct {v2, v3}, Ljavassist/expr/ExprEditor$LoopContext;-><init>(I)V

    move-object v11, v2

    .line 95
    .local v11, "context":Ljavassist/expr/ExprEditor$LoopContext;
    :cond_1
    :goto_0
    invoke-virtual {v10}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    move-object/from16 v12, p1

    invoke-virtual {v1, v10, v12, v8, v11}, Ljavassist/expr/ExprEditor;->loopBody(Ljavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    move-object/from16 v12, p1

    invoke-virtual {v9}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v13

    .line 100
    .local v13, "et":Ljavassist/bytecode/ExceptionTable;
    invoke-virtual {v13}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v14

    .line 101
    .local v14, "n":I
    const/4 v2, 0x0

    move v15, v0

    move v0, v2

    .local v0, "i":I
    .local v15, "edited":Z
    :goto_1
    if-ge v0, v14, :cond_4

    .line 102
    new-instance v16, Ljavassist/expr/Handler;

    move-object/from16 v2, v16

    move-object v3, v13

    move v4, v0

    move-object v5, v10

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Ljavassist/expr/Handler;-><init>(Ljavassist/bytecode/ExceptionTable;ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 103
    .local v2, "h":Ljavassist/expr/Handler;
    invoke-virtual {v1, v2}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/Handler;)V

    .line 104
    invoke-virtual {v2}, Ljavassist/expr/Handler;->edited()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    const/4 v3, 0x1

    .line 106
    .end local v15    # "edited":Z
    .local v3, "edited":Z
    invoke-virtual {v2}, Ljavassist/expr/Handler;->locals()I

    move-result v4

    invoke-virtual {v2}, Ljavassist/expr/Handler;->stack()I

    move-result v5

    invoke-virtual {v11, v4, v5}, Ljavassist/expr/ExprEditor$LoopContext;->updateMax(II)V

    move v15, v3

    .line 101
    .end local v2    # "h":Ljavassist/expr/Handler;
    .end local v3    # "edited":Z
    .restart local v15    # "edited":Z
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {v9}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v0

    iget v2, v11, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    if-ge v0, v2, :cond_5

    .line 113
    iget v0, v11, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    invoke-virtual {v9, v0}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 115
    :cond_5
    invoke-virtual {v9}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v0

    iget v2, v11, Ljavassist/expr/ExprEditor$LoopContext;->maxStack:I

    add-int/2addr v0, v2

    invoke-virtual {v9, v0}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 117
    if-eqz v15, :cond_6

    .line 118
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    .line 119
    invoke-virtual/range {p1 .. p1}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 118
    invoke-virtual {v8, v0, v2}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "b":Ljavassist/bytecode/BadBytecode;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-virtual {v0}, Ljavassist/bytecode/BadBytecode;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 123
    .end local v0    # "b":Ljavassist/bytecode/BadBytecode;
    :cond_6
    :goto_2
    nop

    .line 125
    return v15
.end method

.method doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;Ljavassist/bytecode/CodeIterator;I)Z
    .locals 4
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p3, "context"    # Ljavassist/expr/ExprEditor$LoopContext;
    .param p4, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p5, "endPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "edited":Z
    :goto_0
    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v1

    if-ge v1, p5, :cond_1

    .line 137
    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v1

    .line 138
    .local v1, "size":I
    invoke-virtual {p0, p4, p1, p2, p3}, Ljavassist/expr/ExprEditor;->loopBody(Ljavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p4}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v2

    .line 141
    .local v2, "size2":I
    if-eq v1, v2, :cond_0

    .line 142
    sub-int v3, v2, v1

    add-int/2addr p5, v3

    .line 144
    .end local v1    # "size":I
    .end local v2    # "size2":I
    :cond_0
    goto :goto_0

    .line 146
    :cond_1
    return v0
.end method

.method public edit(Ljavassist/expr/Cast;)V
    .locals 0
    .param p1, "c"    # Ljavassist/expr/Cast;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 314
    return-void
.end method

.method public edit(Ljavassist/expr/ConstructorCall;)V
    .locals 0
    .param p1, "c"    # Ljavassist/expr/ConstructorCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 295
    return-void
.end method

.method public edit(Ljavassist/expr/FieldAccess;)V
    .locals 0
    .param p1, "f"    # Ljavassist/expr/FieldAccess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 302
    return-void
.end method

.method public edit(Ljavassist/expr/Handler;)V
    .locals 0
    .param p1, "h"    # Ljavassist/expr/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 320
    return-void
.end method

.method public edit(Ljavassist/expr/Instanceof;)V
    .locals 0
    .param p1, "i"    # Ljavassist/expr/Instanceof;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 308
    return-void
.end method

.method public edit(Ljavassist/expr/MethodCall;)V
    .locals 0
    .param p1, "m"    # Ljavassist/expr/MethodCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 283
    return-void
.end method

.method public edit(Ljavassist/expr/NewArray;)V
    .locals 0
    .param p1, "a"    # Ljavassist/expr/NewArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 276
    return-void
.end method

.method public edit(Ljavassist/expr/NewExpr;)V
    .locals 0
    .param p1, "e"    # Ljavassist/expr/NewExpr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 267
    return-void
.end method

.method final loopBody(Ljavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;)Z
    .locals 17
    .param p1, "iterator"    # Ljavassist/bytecode/CodeIterator;
    .param p2, "clazz"    # Ljavassist/CtClass;
    .param p3, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p4, "context"    # Ljavassist/expr/ExprEditor$LoopContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "expr":Ljavassist/expr/Expr;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v2

    move v13, v2

    .line 188
    .local v13, "pos":I
    invoke-virtual {v9, v13}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v2

    move v14, v2

    .line 190
    .local v14, "c":I
    const/16 v2, 0xb2

    if-ge v14, v2, :cond_0

    .line 191
    goto/16 :goto_4

    .line 192
    :cond_0
    const/16 v3, 0xbc

    if-ge v14, v3, :cond_8

    .line 193
    const/16 v3, 0xb8

    if-eq v14, v3, :cond_7

    const/16 v3, 0xb9

    if-eq v14, v3, :cond_7

    const/16 v3, 0xb6

    if-ne v14, v3, :cond_1

    goto/16 :goto_2

    .line 199
    :cond_1
    const/16 v3, 0xb4

    if-eq v14, v3, :cond_6

    if-eq v14, v2, :cond_6

    const/16 v2, 0xb5

    if-eq v14, v2, :cond_6

    const/16 v2, 0xb3

    if-ne v14, v2, :cond_2

    goto/16 :goto_1

    .line 205
    :cond_2
    const/16 v2, 0xbb

    if-ne v14, v2, :cond_3

    .line 206
    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v9, v2}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v2

    .line 207
    .local v2, "index":I
    new-instance v3, Ljavassist/expr/ExprEditor$NewOp;

    iget-object v4, v12, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    .line 208
    invoke-virtual/range {p3 .. p3}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v13, v5}, Ljavassist/expr/ExprEditor$NewOp;-><init>(Ljavassist/expr/ExprEditor$NewOp;ILjava/lang/String;)V

    iput-object v3, v12, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    .line 209
    .end local v2    # "index":I
    goto/16 :goto_4

    .line 210
    :cond_3
    const/16 v2, 0xb7

    if-ne v14, v2, :cond_c

    .line 211
    iget-object v2, v12, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    move-object v15, v2

    .line 212
    .local v15, "newList":Ljavassist/expr/ExprEditor$NewOp;
    if-eqz v15, :cond_4

    .line 213
    invoke-virtual/range {p3 .. p3}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    iget-object v3, v15, Ljavassist/expr/ExprEditor$NewOp;->type:Ljava/lang/String;

    add-int/lit8 v4, v13, 0x1

    .line 214
    invoke-virtual {v9, v4}, Ljavassist/bytecode/CodeIterator;->u16bitAt(I)I

    move-result v4

    .line 213
    invoke-virtual {v2, v3, v4}, Ljavassist/bytecode/ConstPool;->isConstructor(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_4

    .line 215
    new-instance v16, Ljavassist/expr/NewExpr;

    iget-object v7, v15, Ljavassist/expr/ExprEditor$NewOp;->type:Ljava/lang/String;

    iget v8, v15, Ljavassist/expr/ExprEditor$NewOp;->pos:I

    move-object/from16 v2, v16

    move v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Ljavassist/expr/NewExpr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    .line 217
    move-object v2, v0

    check-cast v2, Ljavassist/expr/NewExpr;

    invoke-virtual {v1, v2}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/NewExpr;)V

    .line 218
    iget-object v2, v15, Ljavassist/expr/ExprEditor$NewOp;->next:Ljavassist/expr/ExprEditor$NewOp;

    iput-object v2, v12, Ljavassist/expr/ExprEditor$LoopContext;->newList:Ljavassist/expr/ExprEditor$NewOp;

    goto :goto_0

    .line 221
    :cond_4
    new-instance v2, Ljavassist/expr/MethodCall;

    invoke-direct {v2, v13, v9, v10, v11}, Ljavassist/expr/MethodCall;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 222
    .local v2, "mcall":Ljavassist/expr/MethodCall;
    invoke-virtual {v2}, Ljavassist/expr/MethodCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<init>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 223
    new-instance v3, Ljavassist/expr/ConstructorCall;

    invoke-direct {v3, v13, v9, v10, v11}, Ljavassist/expr/ConstructorCall;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 224
    .local v3, "ccall":Ljavassist/expr/ConstructorCall;
    move-object v0, v3

    .line 225
    invoke-virtual {v1, v3}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/ConstructorCall;)V

    .line 226
    .end local v3    # "ccall":Ljavassist/expr/ConstructorCall;
    goto :goto_0

    .line 228
    :cond_5
    move-object v0, v2

    .line 229
    invoke-virtual {v1, v2}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/MethodCall;)V

    .line 232
    .end local v2    # "mcall":Ljavassist/expr/MethodCall;
    .end local v15    # "newList":Ljavassist/expr/ExprEditor$NewOp;
    :goto_0
    goto/16 :goto_4

    .line 202
    :cond_6
    :goto_1
    new-instance v8, Ljavassist/expr/FieldAccess;

    move-object v2, v8

    move v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v7, v14

    invoke-direct/range {v2 .. v7}, Ljavassist/expr/FieldAccess;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V

    move-object v0, v8

    .line 203
    move-object v2, v0

    check-cast v2, Ljavassist/expr/FieldAccess;

    invoke-virtual {v1, v2}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/FieldAccess;)V

    goto :goto_4

    .line 196
    :cond_7
    :goto_2
    new-instance v2, Ljavassist/expr/MethodCall;

    invoke-direct {v2, v13, v9, v10, v11}, Ljavassist/expr/MethodCall;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    move-object v0, v2

    .line 197
    move-object v2, v0

    check-cast v2, Ljavassist/expr/MethodCall;

    invoke-virtual {v1, v2}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/MethodCall;)V

    goto :goto_4

    .line 235
    :cond_8
    if-eq v14, v3, :cond_b

    const/16 v2, 0xbd

    if-eq v14, v2, :cond_b

    const/16 v2, 0xc5

    if-ne v14, v2, :cond_9

    goto :goto_3

    .line 240
    :cond_9
    const/16 v2, 0xc1

    if-ne v14, v2, :cond_a

    .line 241
    new-instance v2, Ljavassist/expr/Instanceof;

    invoke-direct {v2, v13, v9, v10, v11}, Ljavassist/expr/Instanceof;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    move-object v0, v2

    .line 242
    move-object v2, v0

    check-cast v2, Ljavassist/expr/Instanceof;

    invoke-virtual {v1, v2}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/Instanceof;)V

    goto :goto_4

    .line 244
    :cond_a
    const/16 v2, 0xc0

    if-ne v14, v2, :cond_c

    .line 245
    new-instance v2, Ljavassist/expr/Cast;

    invoke-direct {v2, v13, v9, v10, v11}, Ljavassist/expr/Cast;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    move-object v0, v2

    .line 246
    move-object v2, v0

    check-cast v2, Ljavassist/expr/Cast;

    invoke-virtual {v1, v2}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/Cast;)V

    goto :goto_4

    .line 237
    :cond_b
    :goto_3
    new-instance v8, Ljavassist/expr/NewArray;

    move-object v2, v8

    move v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v7, v14

    invoke-direct/range {v2 .. v7}, Ljavassist/expr/NewArray;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;I)V

    move-object v0, v8

    .line 238
    move-object v2, v0

    check-cast v2, Ljavassist/expr/NewArray;

    invoke-virtual {v1, v2}, Ljavassist/expr/ExprEditor;->edit(Ljavassist/expr/NewArray;)V

    .line 250
    :cond_c
    :goto_4
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljavassist/expr/Expr;->edited()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 251
    invoke-virtual {v0}, Ljavassist/expr/Expr;->locals()I

    move-result v2

    invoke-virtual {v0}, Ljavassist/expr/Expr;->stack()I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljavassist/expr/ExprEditor$LoopContext;->updateMax(II)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    const/4 v2, 0x1

    return v2

    .line 254
    :cond_d
    const/4 v2, 0x0

    return v2

    .line 256
    .end local v0    # "expr":Ljavassist/expr/Expr;
    .end local v13    # "pos":I
    .end local v14    # "c":I
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
