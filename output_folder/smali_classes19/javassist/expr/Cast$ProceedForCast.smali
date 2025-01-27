.class Ljavassist/expr/Cast$ProceedForCast;
.super Ljava/lang/Object;
.source "Cast.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/expr/Cast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProceedForCast"
.end annotation


# instance fields
.field index:I

.field retType:Ljavassist/CtClass;


# direct methods
.method constructor <init>(ILjavassist/CtClass;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "t"    # Ljavassist/CtClass;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Ljavassist/expr/Cast$ProceedForCast;->index:I

    .line 162
    iput-object p2, p0, Ljavassist/expr/Cast$ProceedForCast;->retType:Ljavassist/CtClass;

    .line 163
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

    .line 169
    invoke-virtual {p1, p3}, Ljavassist/compiler/JvstCodeGen;->getMethodArgsLength(Ljavassist/compiler/ast/ASTList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    new-array v0, v1, [I

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, p3, v0, v2, v1}, Ljavassist/compiler/JvstCodeGen;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 175
    const/16 v0, 0xc0

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 176
    iget v0, p0, Ljavassist/expr/Cast$ProceedForCast;->index:I

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 177
    iget-object v0, p0, Ljavassist/expr/Cast$ProceedForCast;->retType:Ljavassist/CtClass;

    invoke-virtual {p1, v0}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 178
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljavassist/compiler/CompileError;

    const-string v1, "$proceed() cannot take more than one parameter for cast"

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

    .line 184
    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v2, v0}, Ljavassist/compiler/JvstTypeChecker;->atMethodArgs(Ljavassist/compiler/ast/ASTList;[I[I[Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Ljavassist/expr/Cast$ProceedForCast;->retType:Ljavassist/CtClass;

    invoke-virtual {p1, v0}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    .line 186
    return-void
.end method
