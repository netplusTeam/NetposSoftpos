.class Ljavassist/expr/FieldAccess$ProceedForRead;
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
    name = "ProceedForRead"
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

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    .line 256
    iput p4, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->targetVar:I

    .line 257
    iput p2, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->opcode:I

    .line 258
    iput p3, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->index:I

    .line 259
    return-void
.end method


# virtual methods
.method public doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V
    .locals 3
    .param p1, "gen"    # Ljavassist/compiler/JvstCodeGen;
    .param p2, "bytecode"    # Ljavassist/bytecode/Bytecode;
    .param p3, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 265
    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Ljavassist/compiler/JvstCodeGen;->isParamListName(Ljavassist/compiler/ast/ASTList;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "$proceed() cannot take a parameter for field reading"

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    :goto_0
    iget v0, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->opcode:I

    invoke-static {v0}, Ljavassist/expr/FieldAccess;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    const/4 v0, 0x0

    .local v0, "stack":I
    goto :goto_1

    .line 273
    .end local v0    # "stack":I
    :cond_2
    const/4 v0, -0x1

    .line 274
    .restart local v0    # "stack":I
    iget v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->targetVar:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 277
    :goto_1
    iget-object v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    instance-of v2, v1, Ljavassist/CtPrimitiveType;

    if-eqz v2, :cond_3

    .line 278
    check-cast v1, Ljavassist/CtPrimitiveType;

    invoke-virtual {v1}, Ljavassist/CtPrimitiveType;->getDataSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 280
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 282
    :goto_2
    iget v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->opcode:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 283
    iget v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->index:I

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 284
    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->growStack(I)V

    .line 285
    iget-object v1, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    invoke-virtual {p1, v1}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 286
    return-void
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

    .line 292
    iget-object v0, p0, Ljavassist/expr/FieldAccess$ProceedForRead;->fieldType:Ljavassist/CtClass;

    invoke-virtual {p1, v0}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    .line 293
    return-void
.end method
