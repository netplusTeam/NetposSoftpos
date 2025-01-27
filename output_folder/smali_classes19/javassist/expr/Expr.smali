.class public abstract Ljavassist/expr/Expr;
.super Ljava/lang/Object;
.source "Expr.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# static fields
.field static final javaLangObject:Ljava/lang/String; = "java.lang.Object"


# instance fields
.field currentPos:I

.field edited:Z

.field iterator:Ljavassist/bytecode/CodeIterator;

.field maxLocals:I

.field maxStack:I

.field thisClass:Ljavassist/CtClass;

.field thisMethod:Ljavassist/bytecode/MethodInfo;


# direct methods
.method protected constructor <init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "i"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "declaring"    # Ljavassist/CtClass;
    .param p4, "m"    # Ljavassist/bytecode/MethodInfo;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Ljavassist/expr/Expr;->currentPos:I

    .line 60
    iput-object p2, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    .line 61
    iput-object p3, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    .line 62
    iput-object p4, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 63
    return-void
.end method

.method private static addClass(Ljava/util/List;Ljavassist/CtClass;)V
    .locals 1
    .param p1, "c"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/CtClass;",
            ">;",
            "Ljavassist/CtClass;",
            ")V"
        }
    .end annotation

    .line 173
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljavassist/CtClass;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method static final checkResultValue(Ljavassist/CtClass;Ljava/lang/String;)Z
    .locals 3
    .param p0, "retType"    # Ljavassist/CtClass;
    .param p1, "prog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 214
    const-string v0, "$_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    .local v0, "hasIt":Z
    :goto_0
    if-nez v0, :cond_2

    sget-object v1, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    if-ne p0, v1, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    new-instance v1, Ljavassist/CannotCompileException;

    const-string v2, "the resulting value is not stored in $_"

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_2
    :goto_1
    return v0
.end method

.method static final storeStack([Ljavassist/CtClass;ZILjavassist/bytecode/Bytecode;)V
    .locals 3
    .param p0, "params"    # [Ljavassist/CtClass;
    .param p1, "isStaticCall"    # Z
    .param p2, "regno"    # I
    .param p3, "bytecode"    # Ljavassist/bytecode/Bytecode;

    .line 232
    array-length v0, p0

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, p0, v1, p3}, Ljavassist/expr/Expr;->storeStack0(II[Ljavassist/CtClass;ILjavassist/bytecode/Bytecode;)V

    .line 233
    if-eqz p1, :cond_0

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 236
    :cond_0
    invoke-virtual {p3, p2}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 237
    return-void
.end method

.method private static storeStack0(II[Ljavassist/CtClass;ILjavassist/bytecode/Bytecode;)V
    .locals 4
    .param p0, "i"    # I
    .param p1, "n"    # I
    .param p2, "params"    # [Ljavassist/CtClass;
    .param p3, "regno"    # I
    .param p4, "bytecode"    # Ljavassist/bytecode/Bytecode;

    .line 241
    if-lt p0, p1, :cond_0

    .line 242
    return-void

    .line 243
    :cond_0
    aget-object v0, p2, p0

    .line 245
    .local v0, "c":Ljavassist/CtClass;
    instance-of v1, v0, Ljavassist/CtPrimitiveType;

    if-eqz v1, :cond_1

    .line 246
    move-object v1, v0

    check-cast v1, Ljavassist/CtPrimitiveType;

    invoke-virtual {v1}, Ljavassist/CtPrimitiveType;->getDataSize()I

    move-result v1

    .local v1, "size":I
    goto :goto_0

    .line 248
    .end local v1    # "size":I
    :cond_1
    const/4 v1, 0x1

    .line 250
    .restart local v1    # "size":I
    :goto_0
    add-int/lit8 v2, p0, 0x1

    add-int v3, p3, v1

    invoke-static {v2, p1, p2, v3, p4}, Ljavassist/expr/Expr;->storeStack0(II[Ljavassist/CtClass;ILjavassist/bytecode/Bytecode;)V

    .line 251
    invoke-virtual {p4, p3, v0}, Ljavassist/bytecode/Bytecode;->addStore(ILjavassist/CtClass;)I

    .line 252
    return-void
.end method


# virtual methods
.method protected final edited()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Ljavassist/expr/Expr;->edited:Z

    return v0
.end method

.method protected final getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 74
    iget-object v0, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingClass()Ljavassist/CtClass;
    .locals 1

    .line 71
    iget-object v0, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 203
    iget-object v0, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 204
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    if-nez v0, :cond_0

    .line 205
    const/4 v1, 0x0

    return-object v1

    .line 206
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLineNumber()I
    .locals 2

    .line 194
    iget-object v0, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    iget v1, p0, Ljavassist/expr/Expr;->currentPos:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->getLineNumber(I)I

    move-result v0

    return v0
.end method

.method public indexOfBytecode()I
    .locals 1

    .line 185
    iget v0, p0, Ljavassist/expr/Expr;->currentPos:I

    return v0
.end method

.method protected final locals()I
    .locals 1

    .line 82
    iget v0, p0, Ljavassist/expr/Expr;->maxLocals:I

    return v0
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 10

    .line 133
    iget-object v0, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v0}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v0

    .line 134
    .local v0, "pool":Ljavassist/ClassPool;
    iget-object v1, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 135
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 137
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljavassist/CtClass;>;"
    :try_start_0
    iget-object v3, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v3

    .line 138
    .local v3, "ca":Ljavassist/bytecode/CodeAttribute;
    invoke-virtual {v3}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v4

    .line 139
    .local v4, "et":Ljavassist/bytecode/ExceptionTable;
    iget v5, p0, Ljavassist/expr/Expr;->currentPos:I

    .line 140
    .local v5, "pos":I
    invoke-virtual {v4}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v6

    .line 141
    .local v6, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 142
    invoke-virtual {v4, v7}, Ljavassist/bytecode/ExceptionTable;->startPc(I)I

    move-result v8

    if-gt v8, v5, :cond_0

    invoke-virtual {v4, v7}, Ljavassist/bytecode/ExceptionTable;->endPc(I)I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 143
    invoke-virtual {v4, v7}, Ljavassist/bytecode/ExceptionTable;->catchType(I)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    .local v8, "t":I
    if-lez v8, :cond_0

    .line 146
    :try_start_1
    invoke-virtual {v1, v8}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v9

    invoke-static {v2, v9}, Ljavassist/expr/Expr;->addClass(Ljava/util/List;Ljavassist/CtClass;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    goto :goto_1

    .line 148
    :catch_0
    move-exception v9

    .line 141
    .end local v8    # "t":I
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "ca":Ljavassist/bytecode/CodeAttribute;
    .end local v4    # "et":Ljavassist/bytecode/ExceptionTable;
    .end local v5    # "pos":I
    .end local v6    # "n":I
    .end local v7    # "i":I
    :cond_1
    goto :goto_2

    .line 152
    :catch_1
    move-exception v3

    .line 155
    :goto_2
    iget-object v3, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v3

    .line 156
    .local v3, "ea":Ljavassist/bytecode/ExceptionsAttribute;
    if-eqz v3, :cond_2

    .line 157
    invoke-virtual {v3}, Ljavassist/bytecode/ExceptionsAttribute;->getExceptions()[Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "exceptions":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 159
    array-length v5, v4

    .line 160
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v5, :cond_2

    .line 162
    :try_start_2
    aget-object v7, v4, v6

    invoke-virtual {v0, v7}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v7

    invoke-static {v2, v7}, Ljavassist/expr/Expr;->addClass(Ljava/util/List;Ljavassist/CtClass;)V
    :try_end_2
    .catch Ljavassist/NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 165
    goto :goto_4

    .line 164
    :catch_2
    move-exception v7

    .line 160
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 169
    .end local v4    # "exceptions":[Ljava/lang/String;
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljavassist/CtClass;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljavassist/CtClass;

    return-object v4
.end method

.method public abstract replace(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation
.end method

.method public replace(Ljava/lang/String;Ljavassist/expr/ExprEditor;)V
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "recursive"    # Ljavassist/expr/ExprEditor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0, p1}, Ljavassist/expr/Expr;->replace(Ljava/lang/String;)V

    .line 281
    if-eqz p2, :cond_0

    .line 282
    iget-object v0, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {p0, p2, v0}, Ljavassist/expr/Expr;->runEditor(Ljavassist/expr/ExprEditor;Ljavassist/bytecode/CodeIterator;)V

    .line 283
    :cond_0
    return-void
.end method

.method protected replace0(ILjavassist/bytecode/Bytecode;I)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "bytecode"    # Ljavassist/bytecode/Bytecode;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 287
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v0

    .line 288
    .local v0, "code":[B
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavassist/expr/Expr;->edited:Z

    .line 289
    array-length v1, v0

    sub-int/2addr v1, p3

    .line 290
    .local v1, "gap":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, p3, :cond_0

    .line 291
    iget-object v4, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    add-int v5, p1, v2

    invoke-virtual {v4, v3, v5}, Ljavassist/bytecode/CodeIterator;->writeByte(II)V

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v2    # "i":I
    :cond_0
    if-lez v1, :cond_1

    .line 294
    iget-object v2, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v2, p1, v1, v3}, Ljavassist/bytecode/CodeIterator;->insertGapAt(IIZ)Ljavassist/bytecode/CodeIterator$Gap;

    move-result-object v2

    iget p1, v2, Ljavassist/bytecode/CodeIterator$Gap;->position:I

    .line 296
    :cond_1
    iget-object v2, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v2, v0, p1}, Ljavassist/bytecode/CodeIterator;->write([BI)V

    .line 297
    iget-object v2, p0, Ljavassist/expr/Expr;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 298
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v2

    iput v2, p0, Ljavassist/expr/Expr;->maxLocals:I

    .line 299
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v2

    iput v2, p0, Ljavassist/expr/Expr;->maxStack:I

    .line 300
    return-void
.end method

.method protected runEditor(Ljavassist/expr/ExprEditor;Ljavassist/bytecode/CodeIterator;)V
    .locals 13
    .param p1, "ed"    # Ljavassist/expr/ExprEditor;
    .param p2, "oldIterator"    # Ljavassist/bytecode/CodeIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 305
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 306
    .local v0, "codeAttr":Ljavassist/bytecode/CodeAttribute;
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v1

    .line 307
    .local v1, "orgLocals":I
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v2

    .line 308
    .local v2, "orgStack":I
    invoke-virtual {p0}, Ljavassist/expr/Expr;->locals()I

    move-result v3

    .line 309
    .local v3, "newLocals":I
    invoke-virtual {p0}, Ljavassist/expr/Expr;->stack()I

    move-result v4

    invoke-virtual {v0, v4}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 310
    invoke-virtual {v0, v3}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 311
    new-instance v4, Ljavassist/expr/ExprEditor$LoopContext;

    invoke-direct {v4, v3}, Ljavassist/expr/ExprEditor$LoopContext;-><init>(I)V

    .line 313
    .local v4, "context":Ljavassist/expr/ExprEditor$LoopContext;
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v11

    .line 314
    .local v11, "size":I
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v12

    .line 315
    .local v12, "endPos":I
    iget v5, p0, Ljavassist/expr/Expr;->currentPos:I

    invoke-virtual {p2, v5}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 316
    iget-object v6, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    iget-object v7, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    move-object v5, p1

    move-object v8, v4

    move-object v9, p2

    move v10, v12

    invoke-virtual/range {v5 .. v10}, Ljavassist/expr/ExprEditor;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/expr/ExprEditor$LoopContext;Ljavassist/bytecode/CodeIterator;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 317
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljavassist/expr/Expr;->edited:Z

    .line 319
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v5

    add-int/2addr v5, v12

    sub-int/2addr v5, v11

    invoke-virtual {p2, v5}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 320
    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V

    .line 321
    invoke-virtual {v0, v2}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 322
    iget v5, v4, Ljavassist/expr/ExprEditor$LoopContext;->maxLocals:I

    iput v5, p0, Ljavassist/expr/Expr;->maxLocals:I

    .line 323
    iget v5, p0, Ljavassist/expr/Expr;->maxStack:I

    iget v6, v4, Ljavassist/expr/ExprEditor$LoopContext;->maxStack:I

    add-int/2addr v5, v6

    iput v5, p0, Ljavassist/expr/Expr;->maxStack:I

    .line 324
    return-void
.end method

.method protected final stack()I
    .locals 1

    .line 86
    iget v0, p0, Ljavassist/expr/Expr;->maxStack:I

    return v0
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 6

    .line 100
    iget-object v0, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 101
    .local v0, "mi":Ljavassist/bytecode/MethodInfo;
    iget-object v1, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getDeclaredBehaviors()[Ljavassist/CtBehavior;

    move-result-object v1

    .line 102
    .local v1, "cb":[Ljavassist/CtBehavior;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 103
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 104
    aget-object v3, v1, v2

    return-object v3

    .line 102
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Ljavassist/expr/Expr;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v2}, Ljavassist/CtClass;->getClassInitializer()Ljavassist/CtConstructor;

    move-result-object v2

    .line 107
    .local v2, "init":Ljavassist/CtConstructor;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    if-ne v3, v0, :cond_2

    .line 108
    return-object v2

    .line 115
    :cond_2
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 116
    iget-object v4, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v5

    invoke-virtual {v5}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    .line 117
    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v3

    .line 118
    invoke-virtual {v5}, Ljavassist/CtBehavior;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v5

    invoke-virtual {v5}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    aget-object v4, v1, v3

    return-object v4

    .line 115
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 123
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "fatal: not found"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected final withinStatic()Z
    .locals 1

    .line 93
    iget-object v0, p0, Ljavassist/expr/Expr;->thisMethod:Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
