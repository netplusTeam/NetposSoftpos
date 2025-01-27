.class Ljavassist/expr/NewArray$ProceedForArray;
.super Ljava/lang/Object;
.source "NewArray.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/expr/NewArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProceedForArray"
.end annotation


# instance fields
.field arrayType:Ljavassist/CtClass;

.field dimension:I

.field index:I

.field opcode:I


# direct methods
.method constructor <init>(Ljavassist/CtClass;III)V
    .locals 0
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "op"    # I
    .param p3, "i"    # I
    .param p4, "dim"    # I

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Ljavassist/expr/NewArray$ProceedForArray;->arrayType:Ljavassist/CtClass;

    .line 267
    iput p2, p0, Ljavassist/expr/NewArray$ProceedForArray;->opcode:I

    .line 268
    iput p3, p0, Ljavassist/expr/NewArray$ProceedForArray;->index:I

    .line 269
    iput p4, p0, Ljavassist/expr/NewArray$ProceedForArray;->dimension:I

    .line 270
    return-void
.end method


# virtual methods
.method public doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V
    .locals 4
    .param p1, "gen"    # Ljavassist/compiler/JvstCodeGen;
    .param p2, "bytecode"    # Ljavassist/bytecode/Bytecode;
    .param p3, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 276
    invoke-virtual {p1, p3}, Ljavassist/compiler/JvstCodeGen;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    .line 277
    .local v0, "num":I
    iget v1, p0, Ljavassist/expr/NewArray$ProceedForArray;->dimension:I

    if-ne v0, v1, :cond_2

    .line 281
    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {p1, p3, v1, v2, v3}, Ljavassist/compiler/JvstCodeGen;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 283
    iget v1, p0, Ljavassist/expr/NewArray$ProceedForArray;->opcode:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 284
    iget v1, p0, Ljavassist/expr/NewArray$ProceedForArray;->opcode:I

    const/16 v2, 0xbd

    if-ne v1, v2, :cond_0

    .line 285
    iget v1, p0, Ljavassist/expr/NewArray$ProceedForArray;->index:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    goto :goto_0

    .line 286
    :cond_0
    const/16 v2, 0xbc

    if-ne v1, v2, :cond_1

    .line 287
    iget v1, p0, Ljavassist/expr/NewArray$ProceedForArray;->index:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->add(I)V

    goto :goto_0

    .line 289
    :cond_1
    iget v1, p0, Ljavassist/expr/NewArray$ProceedForArray;->index:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 290
    iget v1, p0, Ljavassist/expr/NewArray$ProceedForArray;->dimension:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 291
    iget v1, p0, Ljavassist/expr/NewArray$ProceedForArray;->dimension:I

    rsub-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 294
    :goto_0
    iget-object v1, p0, Ljavassist/expr/NewArray$ProceedForArray;->arrayType:Ljavassist/CtClass;

    invoke-virtual {p1, v1}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 295
    return-void

    .line 278
    :cond_2
    new-instance v1, Ljavassist/compiler/CompileError;

    const-string v2, "$proceed() with a wrong number of parameters"

    invoke-direct {v1, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V
    .locals 1
    .param p1, "c"    # Ljavassist/compiler/JvstTypeChecker;
    .param p2, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Ljavassist/expr/NewArray$ProceedForArray;->arrayType:Ljavassist/CtClass;

    invoke-virtual {p1, v0}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    .line 302
    return-void
.end method
