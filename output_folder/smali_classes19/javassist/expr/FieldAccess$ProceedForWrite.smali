.class Ljavassist/expr/FieldAccess$ProceedForWrite;
.super Ljava/lang/Object;
.source "FieldAccess.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/expr/FieldAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProceedForWrite"
.end annotation


# instance fields
.field fieldType:Ljavassist/CtClass;

.field index:I

.field opcode:I

.field targetVar:I


# direct methods
.method constructor <init>(Ljavassist/CtClass;III)V
    .locals 0
    .param p1, "type"    # Ljavassist/CtClass;
    .param p2, "op"    # I
    .param p3, "i"    # I
    .param p4, "var"    # I

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->fieldType:Ljavassist/CtClass;

    .line 306
    iput p4, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->targetVar:I

    .line 307
    iput p2, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->opcode:I

    .line 308
    iput p3, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->index:I

    .line 309
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

    .line 315
    invoke-virtual {p1, p3}, Ljavassist/compiler/JvstCodeGen;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 321
    iget v0, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->opcode:I

    invoke-static {v0}, Ljavassist/expr/FieldAccess;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .local v0, "stack":I
    goto :goto_0

    .line 324
    .end local v0    # "stack":I
    :cond_0
    const/4 v0, -0x1

    .line 325
    .restart local v0    # "stack":I
    iget v2, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->targetVar:I

    invoke-virtual {p2, v2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 328
    :goto_0
    new-array v2, v1, [I

    new-array v3, v1, [I

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, p3, v2, v3, v1}, Ljavassist/compiler/JvstCodeGen;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->fieldType:Ljavassist/CtClass;

    invoke-virtual {p1, v1}, Ljavassist/compiler/JvstCodeGen;->doNumCast(Ljavassist/CtClass;)V

    .line 330
    iget-object v1, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->fieldType:Ljavassist/CtClass;

    instance-of v2, v1, Ljavassist/CtPrimitiveType;

    if-eqz v2, :cond_1

    .line 331
    check-cast v1, Ljavassist/CtPrimitiveType;

    invoke-virtual {v1}, Ljavassist/CtPrimitiveType;->getDataSize()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 333
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 335
    :goto_1
    iget v1, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->opcode:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 336
    iget v1, p0, Ljavassist/expr/FieldAccess$ProceedForWrite;->index:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 337
    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 338
    sget-object v1, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    invoke-virtual {p1, v1}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 339
    invoke-virtual {p1}, Ljavassist/compiler/JvstCodeGen;->addNullIfVoid()V

    .line 340
    return-void

    .line 316
    .end local v0    # "stack":I
    :cond_2
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "$proceed() cannot take more than one parameter for field writing"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V
    .locals 3
    .param p1, "c"    # Ljavassist/compiler/JvstTypeChecker;
    .param p2, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 346
    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v2, v0}, Ljavassist/compiler/JvstTypeChecker;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 347
    sget-object v0, Ljavassist/CtClass;->voidType:Ljavassist/CtClass;

    invoke-virtual {p1, v0}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    .line 348
    invoke-virtual {p1}, Ljavassist/compiler/JvstTypeChecker;->addNullIfVoid()V

    .line 349
    return-void
.end method
