.class Ljavassist/compiler/Javac$1;
.super Ljava/lang/Object;
.source "Javac.java"

# interfaces
.implements Ljavassist/compiler/ProceedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/compiler/Javac;->recordProceed(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/compiler/Javac;

.field final synthetic val$m:Ljava/lang/String;

.field final synthetic val$texpr:Ljavassist/compiler/ast/ASTree;


# direct methods
.method constructor <init>(Ljavassist/compiler/Javac;Ljava/lang/String;Ljavassist/compiler/ast/ASTree;)V
    .locals 0
    .param p1, "this$0"    # Ljavassist/compiler/Javac;

    .line 444
    iput-object p1, p0, Ljavassist/compiler/Javac$1;->this$0:Ljavassist/compiler/Javac;

    iput-object p2, p0, Ljavassist/compiler/Javac$1;->val$m:Ljava/lang/String;

    iput-object p3, p0, Ljavassist/compiler/Javac$1;->val$texpr:Ljavassist/compiler/ast/ASTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doit(Ljavassist/compiler/JvstCodeGen;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/ast/ASTList;)V
    .locals 3
    .param p1, "gen"    # Ljavassist/compiler/JvstCodeGen;
    .param p2, "b"    # Ljavassist/bytecode/Bytecode;
    .param p3, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 449
    new-instance v0, Ljavassist/compiler/ast/Member;

    iget-object v1, p0, Ljavassist/compiler/Javac$1;->val$m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    .line 450
    .local v0, "expr":Ljavassist/compiler/ast/ASTree;
    iget-object v1, p0, Ljavassist/compiler/Javac$1;->val$texpr:Ljavassist/compiler/ast/ASTree;

    if-eqz v1, :cond_0

    .line 451
    const/16 v2, 0x2e

    invoke-static {v2, v1, v0}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    .line 453
    :cond_0
    invoke-static {v0, p3}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object v0

    .line 454
    invoke-virtual {p1, v0}, Ljavassist/compiler/JvstCodeGen;->compileExpr(Ljavassist/compiler/ast/ASTree;)V

    .line 455
    invoke-virtual {p1}, Ljavassist/compiler/JvstCodeGen;->addNullIfVoid()V

    .line 456
    return-void
.end method

.method public setReturnType(Ljavassist/compiler/JvstTypeChecker;Ljavassist/compiler/ast/ASTList;)V
    .locals 3
    .param p1, "check"    # Ljavassist/compiler/JvstTypeChecker;
    .param p2, "args"    # Ljavassist/compiler/ast/ASTList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 462
    new-instance v0, Ljavassist/compiler/ast/Member;

    iget-object v1, p0, Ljavassist/compiler/Javac$1;->val$m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, "expr":Ljavassist/compiler/ast/ASTree;
    iget-object v1, p0, Ljavassist/compiler/Javac$1;->val$texpr:Ljavassist/compiler/ast/ASTree;

    if-eqz v1, :cond_0

    .line 464
    const/16 v2, 0x2e

    invoke-static {v2, v1, v0}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v0

    .line 466
    :cond_0
    invoke-static {v0, p2}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object v0

    .line 467
    invoke-virtual {v0, p1}, Ljavassist/compiler/ast/ASTree;->accept(Ljavassist/compiler/ast/Visitor;)V

    .line 468
    invoke-virtual {p1}, Ljavassist/compiler/JvstTypeChecker;->addNullIfVoid()V

    .line 469
    return-void
.end method
