.class Ljavassist/expr/NewExpr$ProceedForNew;
.super Ljava/lang/Object;
.source "NewExpr.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/expr/NewExpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProceedForNew"
.end annotation


# instance fields
.field methodIndex:I

.field newIndex:I

.field newType:Ljavassist/CtClass;


# direct methods
.method constructor <init>(Ljavassist/CtClass;II)V
    .locals 0
    .param p1, "nt"    # Ljavassist/CtClass;
    .param p2, "ni"    # I
    .param p3, "mi"    # I

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Ljavassist/expr/NewExpr$ProceedForNew;->newType:Ljavassist/CtClass;

    .line 248
    iput p2, p0, Ljavassist/expr/NewExpr$ProceedForNew;->newIndex:I

    .line 249
    iput p3, p0, Ljavassist/expr/NewExpr$ProceedForNew;->methodIndex:I

    .line 250
    return-void
.end method


# virtual methods
.method public doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V
    .locals 9
    .param p1, "gen"    # Ljavassist/compiler/JvstCodeGen;
    .param p2, "bytecode"    # Ljavassist/bytecode/Bytecode;
    .param p3, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 256
    const/16 v0, 0xbb

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 257
    iget v0, p0, Ljavassist/expr/NewExpr$ProceedForNew;->newIndex:I

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 258
    const/16 v0, 0x59

    invoke-virtual {p2, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 259
    iget-object v2, p0, Ljavassist/expr/NewExpr$ProceedForNew;->newType:Ljavassist/CtClass;

    const-string v3, "<init>"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Ljavassist/compiler/JvstCodeGen;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;ZZILjavassist/compiler/MemberResolver$Method;)V

    .line 261
    iget-object v0, p0, Ljavassist/expr/NewExpr$ProceedForNew;->newType:Ljavassist/CtClass;

    invoke-virtual {p1, v0}, Ljavassist/compiler/JvstCodeGen;->setType(Ljavassist/CtClass;)V

    .line 262
    return-void
.end method

.method public setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V
    .locals 2
    .param p1, "c"    # Ljavassist/compiler/JvstTypeChecker;
    .param p2, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Ljavassist/expr/NewExpr$ProceedForNew;->newType:Ljavassist/CtClass;

    const-string v1, "<init>"

    invoke-virtual {p1, v0, v1, p2}, Ljavassist/compiler/JvstTypeChecker;->atMethodCallCore(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/MemberResolver$Method;

    .line 269
    iget-object v0, p0, Ljavassist/expr/NewExpr$ProceedForNew;->newType:Ljavassist/CtClass;

    invoke-virtual {p1, v0}, Ljavassist/compiler/JvstTypeChecker;->setType(Ljavassist/CtClass;)V

    .line 270
    return-void
.end method
