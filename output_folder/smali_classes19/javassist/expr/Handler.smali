.class public Ljavassist/expr/Handler;
.super Ljavassist/expr/Expr;
.source "Handler.java"


# static fields
.field private static EXCEPTION_NAME:Ljava/lang/String;


# instance fields
.field private etable:Ljavassist/bytecode/ExceptionTable;

.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "$1"

    sput-object v0, Ljavassist/expr/Handler;->EXCEPTION_NAME:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/ExceptionTable;ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V
    .locals 1
    .param p1, "et"    # Ljavassist/bytecode/ExceptionTable;
    .param p2, "nth"    # I
    .param p3, "it"    # Ljavassist/bytecode/CodeIterator;
    .param p4, "declaring"    # Ljavassist/CtClass;
    .param p5, "m"    # Ljavassist/bytecode/MethodInfo;

    .line 46
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v0

    invoke-direct {p0, v0, p3, p4, p5}, Ljavassist/expr/Expr;-><init>(ILjavassist/bytecode/CodeIterator;Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)V

    .line 47
    iput-object p1, p0, Ljavassist/expr/Handler;->etable:Ljavassist/bytecode/ExceptionTable;

    .line 48
    iput p2, p0, Ljavassist/expr/Handler;->index:I

    .line 49
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-super {p0}, Ljavassist/expr/Expr;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 64
    invoke-super {p0}, Ljavassist/expr/Expr;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getType()Ljavassist/CtClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Ljavassist/expr/Handler;->etable:Ljavassist/bytecode/ExceptionTable;

    iget v1, p0, Ljavassist/expr/Handler;->index:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ExceptionTable;->catchType(I)I

    move-result v0

    .line 91
    .local v0, "type":I
    if-nez v0, :cond_0

    .line 92
    const/4 v1, 0x0

    return-object v1

    .line 93
    :cond_0
    invoke-virtual {p0}, Ljavassist/expr/Handler;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 94
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Ljavassist/expr/Handler;->thisClass:Ljavassist/CtClass;

    invoke-virtual {v3}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavassist/ClassPool;->getCtClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    return-object v3
.end method

.method public insertBefore(Ljava/lang/String;)V
    .locals 10
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/expr/Handler;->edited:Z

    .line 126
    invoke-virtual {p0}, Ljavassist/expr/Handler;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 127
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v2, p0, Ljavassist/expr/Handler;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->get()Ljavassist/bytecode/CodeAttribute;

    move-result-object v2

    .line 128
    .local v2, "ca":Ljavassist/bytecode/CodeAttribute;
    new-instance v3, Ljavassist/compiler/Javac;

    iget-object v4, p0, Ljavassist/expr/Handler;->thisClass:Ljavassist/CtClass;

    invoke-direct {v3, v4}, Ljavassist/compiler/Javac;-><init>(Ljavassist/CtClass;)V

    .line 129
    .local v3, "jv":Ljavassist/compiler/Javac;
    invoke-virtual {v3}, Ljavassist/compiler/Javac;->getBytecode()Ljavassist/bytecode/Bytecode;

    move-result-object v4

    .line 130
    .local v4, "b":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v4, v0}, Ljavassist/bytecode/Bytecode;->setStackDepth(I)V

    .line 131
    invoke-virtual {v2}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v5

    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 134
    :try_start_0
    invoke-virtual {p0}, Ljavassist/expr/Handler;->getType()Ljavassist/CtClass;

    move-result-object v5

    .line 135
    .local v5, "type":Ljavassist/CtClass;
    sget-object v6, Ljavassist/expr/Handler;->EXCEPTION_NAME:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljavassist/compiler/Javac;->recordVariable(Ljavassist/CtClass;Ljava/lang/String;)I

    move-result v6

    .line 136
    .local v6, "var":I
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Ljavassist/compiler/Javac;->recordReturnType(Ljavassist/CtClass;Z)I

    .line 137
    invoke-virtual {v4, v6}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 138
    invoke-virtual {v3, p1}, Ljavassist/compiler/Javac;->compileStmnt(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4, v6}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 141
    iget-object v7, p0, Ljavassist/expr/Handler;->etable:Ljavassist/bytecode/ExceptionTable;

    iget v8, p0, Ljavassist/expr/Handler;->index:I

    invoke-virtual {v7, v8}, Ljavassist/bytecode/ExceptionTable;->handlerPc(I)I

    move-result v7

    .line 142
    .local v7, "oldHandler":I
    const/16 v8, 0xa7

    invoke-virtual {v4, v8}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 143
    iget-object v8, p0, Ljavassist/expr/Handler;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v8}, Ljavassist/bytecode/CodeIterator;->getCodeLength()I

    move-result v8

    sub-int v8, v7, v8

    .line 144
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v8, v0

    .line 143
    invoke-virtual {v4, v8}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 146
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->getMaxStack()I

    move-result v0

    iput v0, p0, Ljavassist/expr/Handler;->maxStack:I

    .line 147
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->getMaxLocals()I

    move-result v0

    iput v0, p0, Ljavassist/expr/Handler;->maxLocals:I

    .line 149
    iget-object v0, p0, Ljavassist/expr/Handler;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavassist/bytecode/CodeIterator;->append([B)I

    move-result v0

    .line 150
    .local v0, "pos":I
    iget-object v8, p0, Ljavassist/expr/Handler;->iterator:Ljavassist/bytecode/CodeIterator;

    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljavassist/bytecode/CodeIterator;->append(Ljavassist/bytecode/ExceptionTable;I)V

    .line 151
    iget-object v8, p0, Ljavassist/expr/Handler;->etable:Ljavassist/bytecode/ExceptionTable;

    iget v9, p0, Ljavassist/expr/Handler;->index:I

    invoke-virtual {v8, v9, v0}, Ljavassist/bytecode/ExceptionTable;->setHandlerPc(II)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "pos":I
    .end local v5    # "type":Ljavassist/CtClass;
    .end local v6    # "var":I
    .end local v7    # "oldHandler":I
    nop

    .line 159
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljavassist/compiler/CompileError;
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v5

    .line 153
    .end local v0    # "e":Ljavassist/compiler/CompileError;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v5
.end method

.method public isFinally()Z
    .locals 2

    .line 102
    iget-object v0, p0, Ljavassist/expr/Handler;->etable:Ljavassist/bytecode/ExceptionTable;

    iget v1, p0, Ljavassist/expr/Handler;->index:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ExceptionTable;->catchType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mayThrow()[Ljavassist/CtClass;
    .locals 1

    .line 82
    invoke-super {p0}, Ljavassist/expr/Expr;->mayThrow()[Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 2
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public where()Ljavassist/CtBehavior;
    .locals 1

    .line 55
    invoke-super {p0}, Ljavassist/expr/Expr;->where()Ljavassist/CtBehavior;

    move-result-object v0

    return-object v0
.end method
