.class Lbsh/BSHTypedVariableDeclaration;
.super Lbsh/SimpleNode;
.source "BSHTypedVariableDeclaration.java"


# instance fields
.field public modifiers:Lbsh/Modifiers;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 34
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private getTypeNode()Lbsh/BSHType;
    .locals 1

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHTypedVariableDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    return-object v0
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 9
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    .line 68
    .local v0, "namespace":Lbsh/NameSpace;
    invoke-direct {p0}, Lbsh/BSHTypedVariableDeclaration;->getTypeNode()Lbsh/BSHType;

    move-result-object v1

    .line 69
    .local v1, "typeNode":Lbsh/BSHType;
    invoke-virtual {v1, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v2

    .line 71
    .local v2, "type":Ljava/lang/Class;
    invoke-virtual {p0}, Lbsh/BSHTypedVariableDeclaration;->getDeclarators()[Lbsh/BSHVariableDeclarator;

    move-result-object v3

    .line 72
    .local v3, "bvda":[Lbsh/BSHVariableDeclarator;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 74
    aget-object v5, v3, v4

    .line 78
    .local v5, "dec":Lbsh/BSHVariableDeclarator;
    invoke-virtual {v5, v1, p1, p2}, Lbsh/BSHVariableDeclarator;->eval(Lbsh/BSHType;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .local v6, "value":Ljava/lang/Object;
    :try_start_1
    iget-object v7, v5, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    iget-object v8, p0, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    invoke-virtual {v0, v7, v2, v6, v8}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    nop

    .line 72
    .end local v5    # "dec":Lbsh/BSHVariableDeclarator;
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .restart local v5    # "dec":Lbsh/BSHVariableDeclarator;
    .restart local v6    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 84
    .local v7, "e":Lbsh/UtilEvalError;
    :try_start_2
    invoke-virtual {v7, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v8

    .end local p1    # "callstack":Lbsh/CallStack;
    .end local p2    # "interpreter":Lbsh/Interpreter;
    throw v8
    :try_end_2
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    .end local v0    # "namespace":Lbsh/NameSpace;
    .end local v1    # "typeNode":Lbsh/BSHType;
    .end local v2    # "type":Ljava/lang/Class;
    .end local v3    # "bvda":[Lbsh/BSHVariableDeclarator;
    .end local v4    # "i":I
    .end local v5    # "dec":Lbsh/BSHVariableDeclarator;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "e":Lbsh/UtilEvalError;
    .restart local p1    # "callstack":Lbsh/CallStack;
    .restart local p2    # "interpreter":Lbsh/Interpreter;
    :cond_0
    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Lbsh/EvalError;
    const-string v1, "Typed variable declaration"

    invoke-virtual {v0, v1}, Lbsh/EvalError;->reThrow(Ljava/lang/String;)V

    .line 91
    .end local v0    # "e":Lbsh/EvalError;
    :goto_1
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v0
.end method

.method evalType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .locals 2
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lbsh/BSHTypedVariableDeclaration;->getTypeNode()Lbsh/BSHType;

    move-result-object v0

    .line 44
    .local v0, "typeNode":Lbsh/BSHType;
    invoke-virtual {v0, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method getDeclarators()[Lbsh/BSHVariableDeclarator;
    .locals 6

    .line 49
    invoke-virtual {p0}, Lbsh/BSHTypedVariableDeclaration;->jjtGetNumChildren()I

    move-result v0

    .line 50
    .local v0, "n":I
    const/4 v1, 0x1

    .line 51
    .local v1, "start":I
    sub-int v2, v0, v1

    new-array v2, v2, [Lbsh/BSHVariableDeclarator;

    .line 52
    .local v2, "bvda":[Lbsh/BSHVariableDeclarator;
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 54
    sub-int v4, v3, v1

    invoke-virtual {p0, v3}, Lbsh/BSHTypedVariableDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v5

    check-cast v5, Lbsh/BSHVariableDeclarator;

    aput-object v5, v2, v4

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "defaultPackage"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lbsh/BSHTypedVariableDeclaration;->getTypeNode()Lbsh/BSHType;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHType;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
