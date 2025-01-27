.class Lbsh/BSHImportDeclaration;
.super Lbsh/SimpleNode;
.source "BSHImportDeclaration.java"


# instance fields
.field public importPackage:Z

.field public staticImport:Z

.field public superImport:Z


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 37
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 3
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    .line 43
    .local v0, "namespace":Lbsh/NameSpace;
    iget-boolean v1, p0, Lbsh/BSHImportDeclaration;->superImport:Z

    if-eqz v1, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {v0}, Lbsh/NameSpace;->doSuperImport()V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Lbsh/UtilEvalError;
    invoke-virtual {v1, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v2

    throw v2

    .line 51
    .end local v1    # "e":Lbsh/UtilEvalError;
    :cond_0
    iget-boolean v1, p0, Lbsh/BSHImportDeclaration;->staticImport:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 53
    iget-boolean v1, p0, Lbsh/BSHImportDeclaration;->importPackage:Z

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p0, v2}, Lbsh/BSHImportDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/BSHAmbiguousName;

    invoke-virtual {v1, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v1

    .line 57
    .local v1, "clas":Ljava/lang/Class;
    invoke-virtual {v0, v1}, Lbsh/NameSpace;->importStatic(Ljava/lang/Class;)V

    .line 58
    .end local v1    # "clas":Ljava/lang/Class;
    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Lbsh/EvalError;

    const-string/jumbo v2, "static field imports not supported yet"

    invoke-direct {v1, v2, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    .line 64
    :cond_2
    invoke-virtual {p0, v2}, Lbsh/BSHImportDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/BSHAmbiguousName;

    iget-object v1, v1, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    .line 65
    .local v1, "name":Ljava/lang/String;
    iget-boolean v2, p0, Lbsh/BSHImportDeclaration;->importPackage:Z

    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {v0, v1}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v0, v1}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    .line 72
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v1
.end method
