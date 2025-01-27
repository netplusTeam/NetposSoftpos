.class public Ljavassist/bytecode/analysis/Analyzer;
.super Ljava/lang/Object;
.source "Analyzer.java"

# interfaces
.implements Ljavassist/bytecode/Opcode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;
    }
.end annotation


# instance fields
.field private clazz:Ljavassist/CtClass;

.field private exceptions:[Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

.field private frames:[Ljavassist/bytecode/analysis/Frame;

.field private final scanner:Ljavassist/bytecode/analysis/SubroutineScanner;

.field private subroutines:[Ljavassist/bytecode/analysis/Subroutine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljavassist/bytecode/analysis/SubroutineScanner;

    invoke-direct {v0}, Ljavassist/bytecode/analysis/SubroutineScanner;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->scanner:Ljavassist/bytecode/analysis/SubroutineScanner;

    return-void
.end method

.method private analyzeNextEntry(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Executor;)V
    .locals 11
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "queue"    # Ljavassist/bytecode/analysis/IntQueue;
    .param p4, "executor"    # Ljavassist/bytecode/analysis/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 168
    invoke-virtual {p3}, Ljavassist/bytecode/analysis/IntQueue;->take()I

    move-result v6

    .line 169
    .local v6, "pos":I
    invoke-virtual {p2, v6}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 170
    invoke-virtual {p2}, Ljavassist/bytecode/CodeIterator;->next()I

    .line 172
    iget-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Frame;->copy()Ljavassist/bytecode/analysis/Frame;

    move-result-object v7

    .line 173
    .local v7, "frame":Ljavassist/bytecode/analysis/Frame;
    iget-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    aget-object v8, v0, v6

    .line 176
    .local v8, "subroutine":Ljavassist/bytecode/analysis/Subroutine;
    move-object v0, p4

    move-object v1, p1

    move v2, v6

    move-object v3, p2

    move-object v4, v7

    move-object v5, v8

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Ljavassist/bytecode/analysis/Executor;->execute(Ljavassist/bytecode/MethodInfo;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    nop

    .line 181
    invoke-virtual {p2, v6}, Ljavassist/bytecode/CodeIterator;->byteAt(I)I

    move-result v9

    .line 183
    .local v9, "opcode":I
    const/16 v0, 0xaa

    if-ne v9, v0, :cond_0

    .line 184
    invoke-direct {p0, p3, v6, p2, v7}, Ljavassist/bytecode/analysis/Analyzer;->mergeTableSwitch(Ljavassist/bytecode/analysis/IntQueue;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V

    goto/16 :goto_2

    .line 185
    :cond_0
    const/16 v0, 0xab

    if-ne v9, v0, :cond_1

    .line 186
    invoke-direct {p0, p3, v6, p2, v7}, Ljavassist/bytecode/analysis/Analyzer;->mergeLookupSwitch(Ljavassist/bytecode/analysis/IntQueue;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V

    goto :goto_2

    .line 187
    :cond_1
    const/16 v0, 0xa9

    if-ne v9, v0, :cond_2

    .line 188
    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move v3, v6

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/analysis/Analyzer;->mergeRet(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/CodeIterator;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V

    goto :goto_2

    .line 189
    :cond_2
    invoke-static {v9}, Ljavassist/bytecode/analysis/Util;->isJumpInstruction(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    invoke-static {v6, p2}, Ljavassist/bytecode/analysis/Util;->getJumpTarget(ILjavassist/bytecode/CodeIterator;)I

    move-result v10

    .line 192
    .local v10, "target":I
    invoke-static {v9}, Ljavassist/bytecode/analysis/Util;->isJsr(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v2, v0, v6

    iget-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    aget-object v3, v0, v10

    invoke-direct {p0, p2, v6}, Ljavassist/bytecode/analysis/Analyzer;->lookAhead(Ljavassist/bytecode/CodeIterator;I)I

    move-result v5

    move-object v0, p0

    move-object v1, p3

    move v4, v6

    invoke-direct/range {v0 .. v5}, Ljavassist/bytecode/analysis/Analyzer;->mergeJsr(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;II)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-static {v9}, Ljavassist/bytecode/analysis/Util;->isGoto(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 196
    invoke-direct {p0, p2, v6}, Ljavassist/bytecode/analysis/Analyzer;->lookAhead(Ljavassist/bytecode/CodeIterator;I)I

    move-result v0

    invoke-direct {p0, p3, v7, v0}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    .line 199
    :cond_4
    :goto_0
    invoke-direct {p0, p3, v7, v10}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    .end local v10    # "target":I
    goto :goto_1

    .line 200
    :cond_5
    const/16 v0, 0xbf

    if-eq v9, v0, :cond_6

    invoke-static {v9}, Ljavassist/bytecode/analysis/Util;->isReturn(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 202
    invoke-direct {p0, p2, v6}, Ljavassist/bytecode/analysis/Analyzer;->lookAhead(Ljavassist/bytecode/CodeIterator;I)I

    move-result v0

    invoke-direct {p0, p3, v7, v0}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    goto :goto_2

    .line 200
    :cond_6
    :goto_1
    nop

    .line 208
    :goto_2
    invoke-direct {p0, p3, p1, v6, v7}, Ljavassist/bytecode/analysis/Analyzer;->mergeExceptionHandlers(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/MethodInfo;ILjavassist/bytecode/analysis/Frame;)V

    .line 209
    return-void

    .line 177
    .end local v9    # "opcode":I
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljavassist/bytecode/BadBytecode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private buildExceptionInfo(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;
    .locals 13
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;

    .line 212
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 213
    .local v0, "constPool":Ljavassist/bytecode/ConstPool;
    iget-object v1, p0, Ljavassist/bytecode/analysis/Analyzer;->clazz:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v1

    .line 215
    .local v1, "classes":Ljavassist/ClassPool;
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v2

    .line 216
    .local v2, "table":Ljavassist/bytecode/ExceptionTable;
    invoke-virtual {v2}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v3

    new-array v3, v3, [Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

    .line 217
    .local v3, "exceptions":[Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljavassist/bytecode/ExceptionTable;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 218
    invoke-virtual {v2, v4}, Ljavassist/bytecode/ExceptionTable;->catchType(I)I

    move-result v5

    .line 221
    .local v5, "index":I
    if-nez v5, :cond_0

    :try_start_0
    sget-object v6, Ljavassist/bytecode/analysis/Type;->THROWABLE:Ljavassist/bytecode/analysis/Type;

    :goto_1
    move-object v11, v6

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v5}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v6

    invoke-static {v6}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v6
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 224
    .local v11, "type":Ljavassist/bytecode/analysis/Type;
    :goto_2
    nop

    .line 226
    new-instance v6, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

    invoke-virtual {v2, v4}, Ljavassist/bytecode/ExceptionTable;->startPc(I)I

    move-result v8

    invoke-virtual {v2, v4}, Ljavassist/bytecode/ExceptionTable;->endPc(I)I

    move-result v9

    invoke-virtual {v2, v4}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v10

    const/4 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;-><init>(IIILjavassist/bytecode/analysis/Type;Ljavassist/bytecode/analysis/Analyzer$1;)V

    aput-object v6, v3, v4

    .line 217
    .end local v5    # "index":I
    .end local v11    # "type":Ljavassist/bytecode/analysis/Type;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    .restart local v5    # "index":I
    :catch_0
    move-exception v6

    .line 223
    .local v6, "e":Ljavassist/NotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljavassist/NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 229
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v6    # "e":Ljavassist/NotFoundException;
    :cond_1
    return-object v3
.end method

.method private firstFrame(Ljavassist/bytecode/MethodInfo;II)Ljavassist/bytecode/analysis/Frame;
    .locals 7
    .param p1, "method"    # Ljavassist/bytecode/MethodInfo;
    .param p2, "maxLocals"    # I
    .param p3, "maxStack"    # I

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "pos":I
    new-instance v1, Ljavassist/bytecode/analysis/Frame;

    invoke-direct {v1, p2, p3}, Ljavassist/bytecode/analysis/Frame;-><init>(II)V

    .line 236
    .local v1, "first":Ljavassist/bytecode/analysis/Frame;
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 237
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "pos":I
    .local v2, "pos":I
    iget-object v3, p0, Ljavassist/bytecode/analysis/Analyzer;->clazz:Ljavassist/CtClass;

    invoke-static {v3}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    move v0, v2

    .line 242
    .end local v2    # "pos":I
    .restart local v0    # "pos":I
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavassist/bytecode/analysis/Analyzer;->clazz:Ljavassist/CtClass;

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {v2, v3}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v2
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .local v2, "parameters":[Ljavassist/CtClass;
    nop

    .line 247
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 248
    aget-object v4, v2, v3

    invoke-static {v4}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavassist/bytecode/analysis/Analyzer;->zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    .line 249
    .local v4, "type":Ljavassist/bytecode/analysis/Type;
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "pos":I
    .local v5, "pos":I
    invoke-virtual {v1, v0, v4}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    .line 250
    invoke-virtual {v4}, Ljavassist/bytecode/analysis/Type;->getSize()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    .line 251
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "pos":I
    .restart local v0    # "pos":I
    sget-object v6, Ljavassist/bytecode/analysis/Type;->TOP:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v1, v5, v6}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    goto :goto_1

    .line 250
    .end local v0    # "pos":I
    .restart local v5    # "pos":I
    :cond_1
    move v0, v5

    .line 247
    .end local v4    # "type":Ljavassist/bytecode/analysis/Type;
    .end local v5    # "pos":I
    .restart local v0    # "pos":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    .end local v3    # "i":I
    :cond_2
    return-object v1

    .line 243
    .end local v2    # "parameters":[Ljavassist/CtClass;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljavassist/NotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getNext(Ljavassist/bytecode/CodeIterator;II)I
    .locals 1
    .param p1, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p2, "of"    # I
    .param p3, "restore"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 258
    invoke-virtual {p1, p2}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 259
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->next()I

    .line 260
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v0

    .line 261
    .local v0, "next":I
    invoke-virtual {p1, p3}, Ljavassist/bytecode/CodeIterator;->move(I)V

    .line 262
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->next()I

    .line 264
    return v0
.end method

.method private lookAhead(Ljavassist/bytecode/CodeIterator;I)I
    .locals 3
    .param p1, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p1}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v0

    return v0

    .line 269
    :cond_0
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execution falls off end! [pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V
    .locals 3
    .param p1, "queue"    # Ljavassist/bytecode/analysis/IntQueue;
    .param p2, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .param p3, "target"    # I

    .line 276
    iget-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v1, v0, p3

    .line 279
    .local v1, "old":Ljavassist/bytecode/analysis/Frame;
    if-nez v1, :cond_0

    .line 280
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->copy()Ljavassist/bytecode/analysis/Frame;

    move-result-object v2

    aput-object v2, v0, p3

    .line 281
    const/4 v0, 0x1

    .local v0, "changed":Z
    goto :goto_0

    .line 283
    .end local v0    # "changed":Z
    :cond_0
    invoke-virtual {v1, p2}, Ljavassist/bytecode/analysis/Frame;->merge(Ljavassist/bytecode/analysis/Frame;)Z

    move-result v0

    .line 286
    .restart local v0    # "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p1, p3}, Ljavassist/bytecode/analysis/IntQueue;->add(I)V

    .line 289
    :cond_1
    return-void
.end method

.method private mergeExceptionHandlers(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/MethodInfo;ILjavassist/bytecode/analysis/Frame;)V
    .locals 4
    .param p1, "queue"    # Ljavassist/bytecode/analysis/IntQueue;
    .param p2, "method"    # Ljavassist/bytecode/MethodInfo;
    .param p3, "pos"    # I
    .param p4, "frame"    # Ljavassist/bytecode/analysis/Frame;

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavassist/bytecode/analysis/Analyzer;->exceptions:[Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 293
    aget-object v1, v1, v0

    .line 296
    .local v1, "exception":Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;
    invoke-static {v1}, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;->access$100(Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;)I

    move-result v2

    if-lt p3, v2, :cond_0

    invoke-static {v1}, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;->access$200(Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;)I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 297
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->copy()Ljavassist/bytecode/analysis/Frame;

    move-result-object v2

    .line 298
    .local v2, "newFrame":Ljavassist/bytecode/analysis/Frame;
    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Frame;->clearStack()V

    .line 299
    invoke-static {v1}, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;->access$300(Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavassist/bytecode/analysis/Frame;->push(Ljavassist/bytecode/analysis/Type;)V

    .line 300
    invoke-static {v1}, Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;->access$400(Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;)I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    .line 292
    .end local v1    # "exception":Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;
    .end local v2    # "newFrame":Ljavassist/bytecode/analysis/Frame;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private mergeJsr(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;II)V
    .locals 6
    .param p1, "queue"    # Ljavassist/bytecode/analysis/IntQueue;
    .param p2, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .param p3, "sub"    # Ljavassist/bytecode/analysis/Subroutine;
    .param p4, "pos"    # I
    .param p5, "next"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 306
    if-eqz p3, :cond_7

    .line 309
    iget-object v0, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v1, v0, p5

    .line 310
    .local v1, "old":Ljavassist/bytecode/analysis/Frame;
    const/4 v2, 0x0

    .line 312
    .local v2, "changed":Z
    if-nez v1, :cond_0

    .line 313
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->copy()Ljavassist/bytecode/analysis/Frame;

    move-result-object v3

    aput-object v3, v0, p5

    move-object v1, v3

    .line 314
    const/4 v0, 0x1

    .end local v2    # "changed":Z
    .local v0, "changed":Z
    goto :goto_2

    .line 316
    .end local v0    # "changed":Z
    .restart local v2    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Frame;->localsLength()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 318
    invoke-virtual {p3, v0}, Ljavassist/bytecode/analysis/Subroutine;->isAccessed(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 319
    invoke-virtual {v1, v0}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v3

    .line 320
    .local v3, "oldType":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {p2, v0}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    .line 321
    .local v4, "newType":Ljavassist/bytecode/analysis/Type;
    if-nez v3, :cond_1

    .line 322
    invoke-virtual {v1, v0, v4}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    .line 323
    const/4 v2, 0x1

    .line 324
    goto :goto_1

    .line 327
    :cond_1
    invoke-virtual {v3, v4}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v4

    .line 329
    invoke-virtual {v1, v0, v4}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    .line 330
    invoke-virtual {v4, v3}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljavassist/bytecode/analysis/Type;->popChanged()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 331
    :cond_2
    const/4 v2, 0x1

    .line 316
    .end local v3    # "oldType":Ljavassist/bytecode/analysis/Type;
    .end local v4    # "newType":Ljavassist/bytecode/analysis/Type;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 336
    .end local v2    # "changed":Z
    .local v0, "changed":Z
    :goto_2
    invoke-virtual {v1}, Ljavassist/bytecode/analysis/Frame;->isJsrMerged()Z

    move-result v2

    if-nez v2, :cond_5

    .line 337
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/bytecode/analysis/Frame;->setJsrMerged(Z)V

    .line 338
    const/4 v0, 0x1

    .line 341
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljavassist/bytecode/analysis/Frame;->isRetMerged()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 342
    invoke-virtual {p1, p5}, Ljavassist/bytecode/analysis/IntQueue;->add(I)V

    .line 344
    :cond_6
    return-void

    .line 307
    .end local v0    # "changed":Z
    .end local v1    # "old":Ljavassist/bytecode/analysis/Frame;
    :cond_7
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No subroutine at jsr target! [pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private mergeLookupSwitch(Ljavassist/bytecode/analysis/IntQueue;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V
    .locals 4
    .param p1, "queue"    # Ljavassist/bytecode/analysis/IntQueue;
    .param p2, "pos"    # I
    .param p3, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 347
    and-int/lit8 v0, p2, -0x4

    add-int/lit8 v0, v0, 0x4

    .line 349
    .local v0, "index":I
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, p1, p4, v1}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    .line 350
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    .line 351
    .local v1, "npairs":I
    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    .line 354
    .local v2, "end":I
    add-int/lit8 v0, v0, 0x4

    :goto_0
    if-ge v0, v2, :cond_0

    .line 355
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v3

    add-int/2addr v3, p2

    .line 356
    .local v3, "target":I
    invoke-direct {p0, p1, p4, v3}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    .line 354
    .end local v3    # "target":I
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method

.method private mergeRet(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/CodeIterator;ILjavassist/bytecode/analysis/Frame;Ljavassist/bytecode/analysis/Subroutine;)V
    .locals 9
    .param p1, "queue"    # Ljavassist/bytecode/analysis/IntQueue;
    .param p2, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p3, "pos"    # I
    .param p4, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .param p5, "subroutine"    # Ljavassist/bytecode/analysis/Subroutine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 361
    if-eqz p5, :cond_6

    .line 364
    invoke-virtual {p5}, Ljavassist/bytecode/analysis/Subroutine;->callers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 365
    .local v1, "caller":I
    invoke-direct {p0, p2, v1, p3}, Ljavassist/bytecode/analysis/Analyzer;->getNext(Ljavassist/bytecode/CodeIterator;II)I

    move-result v2

    .line 366
    .local v2, "returnLoc":I
    const/4 v3, 0x0

    .line 368
    .local v3, "changed":Z
    iget-object v4, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    aget-object v5, v4, v2

    .line 369
    .local v5, "old":Ljavassist/bytecode/analysis/Frame;
    if-nez v5, :cond_0

    .line 370
    invoke-virtual {p4}, Ljavassist/bytecode/analysis/Frame;->copyStack()Ljavassist/bytecode/analysis/Frame;

    move-result-object v6

    aput-object v6, v4, v2

    move-object v5, v6

    .line 371
    const/4 v3, 0x1

    goto :goto_1

    .line 373
    :cond_0
    invoke-virtual {v5, p4}, Ljavassist/bytecode/analysis/Frame;->mergeStack(Ljavassist/bytecode/analysis/Frame;)Z

    move-result v3

    .line 376
    :goto_1
    invoke-virtual {p5}, Ljavassist/bytecode/analysis/Subroutine;->accessed()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 377
    .local v6, "index":I
    invoke-virtual {v5, v6}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v7

    .line 378
    .local v7, "oldType":Ljavassist/bytecode/analysis/Type;
    invoke-virtual {p4, v6}, Ljavassist/bytecode/analysis/Frame;->getLocal(I)Ljavassist/bytecode/analysis/Type;

    move-result-object v8

    .line 379
    .local v8, "newType":Ljavassist/bytecode/analysis/Type;
    if-eq v7, v8, :cond_1

    .line 380
    invoke-virtual {v5, v6, v8}, Ljavassist/bytecode/analysis/Frame;->setLocal(ILjavassist/bytecode/analysis/Type;)V

    .line 381
    const/4 v3, 0x1

    .line 383
    .end local v6    # "index":I
    .end local v7    # "oldType":Ljavassist/bytecode/analysis/Type;
    .end local v8    # "newType":Ljavassist/bytecode/analysis/Type;
    :cond_1
    goto :goto_2

    .line 385
    :cond_2
    invoke-virtual {v5}, Ljavassist/bytecode/analysis/Frame;->isRetMerged()Z

    move-result v4

    if-nez v4, :cond_3

    .line 386
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljavassist/bytecode/analysis/Frame;->setRetMerged(Z)V

    .line 387
    const/4 v3, 0x1

    .line 390
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v5}, Ljavassist/bytecode/analysis/Frame;->isJsrMerged()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 391
    invoke-virtual {p1, v2}, Ljavassist/bytecode/analysis/IntQueue;->add(I)V

    .line 392
    .end local v1    # "caller":I
    .end local v2    # "returnLoc":I
    .end local v3    # "changed":Z
    .end local v5    # "old":Ljavassist/bytecode/analysis/Frame;
    :cond_4
    goto :goto_0

    .line 393
    :cond_5
    return-void

    .line 362
    :cond_6
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ret on no subroutine! [pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private mergeTableSwitch(Ljavassist/bytecode/analysis/IntQueue;ILjavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/Frame;)V
    .locals 5
    .param p1, "queue"    # Ljavassist/bytecode/analysis/IntQueue;
    .param p2, "pos"    # I
    .param p3, "iter"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "frame"    # Ljavassist/bytecode/analysis/Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 398
    and-int/lit8 v0, p2, -0x4

    add-int/lit8 v0, v0, 0x4

    .line 400
    .local v0, "index":I
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, p1, p4, v1}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    .line 401
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v1

    .line 402
    .local v1, "low":I
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v2

    .line 403
    .local v2, "high":I
    sub-int v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    .line 406
    .local v3, "end":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 407
    invoke-virtual {p3, v0}, Ljavassist/bytecode/CodeIterator;->s32bitAt(I)I

    move-result v4

    add-int/2addr v4, p2

    .line 408
    .local v4, "target":I
    invoke-direct {p0, p1, p4, v4}, Ljavassist/bytecode/analysis/Analyzer;->merge(Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Frame;I)V

    .line 406
    .end local v4    # "target":I
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method private zeroExtend(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 1
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .line 413
    sget-object v0, Ljavassist/bytecode/analysis/Type;->SHORT:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->BYTE:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->CHAR:Ljavassist/bytecode/analysis/Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavassist/bytecode/analysis/Type;->BOOLEAN:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    return-object p1

    .line 414
    :cond_1
    :goto_0
    sget-object v0, Ljavassist/bytecode/analysis/Type;->INTEGER:Ljavassist/bytecode/analysis/Type;

    return-object v0
.end method


# virtual methods
.method public analyze(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Frame;
    .locals 10
    .param p1, "clazz"    # Ljavassist/CtClass;
    .param p2, "method"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 121
    iput-object p1, p0, Ljavassist/bytecode/analysis/Analyzer;->clazz:Ljavassist/CtClass;

    .line 122
    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 124
    .local v0, "codeAttribute":Ljavassist/bytecode/CodeAttribute;
    if-nez v0, :cond_0

    .line 125
    const/4 v1, 0x0

    return-object v1

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v1

    .line 128
    .local v1, "maxLocals":I
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v2

    .line 129
    .local v2, "maxStack":I
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getCodeLength()I

    move-result v3

    .line 131
    .local v3, "codeLength":I
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v4

    .line 132
    .local v4, "iter":Ljavassist/bytecode/CodeIterator;
    new-instance v5, Ljavassist/bytecode/analysis/IntQueue;

    invoke-direct {v5}, Ljavassist/bytecode/analysis/IntQueue;-><init>()V

    .line 134
    .local v5, "queue":Ljavassist/bytecode/analysis/IntQueue;
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/Analyzer;->buildExceptionInfo(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

    move-result-object v6

    iput-object v6, p0, Ljavassist/bytecode/analysis/Analyzer;->exceptions:[Ljavassist/bytecode/analysis/Analyzer$ExceptionInfo;

    .line 135
    iget-object v6, p0, Ljavassist/bytecode/analysis/Analyzer;->scanner:Ljavassist/bytecode/analysis/SubroutineScanner;

    invoke-virtual {v6, p2}, Ljavassist/bytecode/analysis/SubroutineScanner;->scan(Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Subroutine;

    move-result-object v6

    iput-object v6, p0, Ljavassist/bytecode/analysis/Analyzer;->subroutines:[Ljavassist/bytecode/analysis/Subroutine;

    .line 137
    new-instance v6, Ljavassist/bytecode/analysis/Executor;

    invoke-virtual {p1}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v7

    invoke-virtual {p2}, Ljavassist/bytecode/MethodInfo;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavassist/bytecode/analysis/Executor;-><init>(Ljavassist/ClassPool;Ljavassist/bytecode/ConstPool;)V

    .line 138
    .local v6, "executor":Ljavassist/bytecode/analysis/Executor;
    new-array v7, v3, [Ljavassist/bytecode/analysis/Frame;

    iput-object v7, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    .line 139
    invoke-virtual {v4}, Ljavassist/bytecode/CodeIterator;->lookAhead()I

    move-result v8

    invoke-direct {p0, p2, v1, v2}, Ljavassist/bytecode/analysis/Analyzer;->firstFrame(Ljavassist/bytecode/MethodInfo;II)Ljavassist/bytecode/analysis/Frame;

    move-result-object v9

    aput-object v9, v7, v8

    .line 140
    invoke-virtual {v4}, Ljavassist/bytecode/CodeIterator;->next()I

    move-result v7

    invoke-virtual {v5, v7}, Ljavassist/bytecode/analysis/IntQueue;->add(I)V

    .line 141
    :goto_0
    invoke-virtual {v5}, Ljavassist/bytecode/analysis/IntQueue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 142
    invoke-direct {p0, p2, v4, v5, v6}, Ljavassist/bytecode/analysis/Analyzer;->analyzeNextEntry(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/CodeIterator;Ljavassist/bytecode/analysis/IntQueue;Ljavassist/bytecode/analysis/Executor;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v7, p0, Ljavassist/bytecode/analysis/Analyzer;->frames:[Ljavassist/bytecode/analysis/Frame;

    return-object v7
.end method

.method public analyze(Ljavassist/CtMethod;)[Ljavassist/bytecode/analysis/Frame;
    .locals 2
    .param p1, "method"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/analysis/Analyzer;->analyze(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)[Ljavassist/bytecode/analysis/Frame;

    move-result-object v0

    return-object v0
.end method
