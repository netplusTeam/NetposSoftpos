.class Lbsh/BSHMethodDeclaration;
.super Lbsh/SimpleNode;
.source "BSHMethodDeclaration.java"


# instance fields
.field blockNode:Lbsh/BSHBlock;

.field firstThrowsClause:I

.field public modifiers:Lbsh/Modifiers;

.field public name:Ljava/lang/String;

.field numThrows:I

.field paramsNode:Lbsh/BSHFormalParameters;

.field returnType:Ljava/lang/Class;

.field returnTypeNode:Lbsh/BSHReturnType;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 50
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lbsh/BSHMethodDeclaration;->numThrows:I

    .line 50
    return-void
.end method

.method private evalNodes(Lbsh/CallStack;Lbsh/Interpreter;)V
    .locals 5
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->insureNodesParsed()V

    .line 143
    iget v0, p0, Lbsh/BSHMethodDeclaration;->firstThrowsClause:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lbsh/BSHMethodDeclaration;->numThrows:I

    iget v2, p0, Lbsh/BSHMethodDeclaration;->firstThrowsClause:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/BSHAmbiguousName;

    invoke-virtual {v1, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHFormalParameters;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    iget-object v1, v1, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 153
    iget-object v1, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    iget-object v1, v1, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_1
    new-instance v1, Lbsh/EvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Strict Java Mode) Undeclared argument type, parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    .line 158
    invoke-virtual {v4}, Lbsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p0, v2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    .line 161
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->returnType:Ljava/lang/Class;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 164
    :cond_3
    new-instance v0, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Strict Java Mode) Undeclared return type for method: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    .line 168
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 4
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1, p2}, Lbsh/BSHMethodDeclaration;->evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->returnType:Ljava/lang/Class;

    .line 116
    invoke-direct {p0, p1, p2}, Lbsh/BSHMethodDeclaration;->evalNodes(Lbsh/CallStack;Lbsh/Interpreter;)V

    .line 126
    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    .line 127
    .local v0, "namespace":Lbsh/NameSpace;
    new-instance v1, Lbsh/BshMethod;

    iget-object v2, p0, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    invoke-direct {v1, p0, v0, v2}, Lbsh/BshMethod;-><init>(Lbsh/BSHMethodDeclaration;Lbsh/NameSpace;Lbsh/Modifiers;)V

    .line 129
    .local v1, "bshMethod":Lbsh/BshMethod;
    :try_start_0
    iget-object v2, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lbsh/NameSpace;->setMethod(Ljava/lang/String;Lbsh/BshMethod;)V
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .line 134
    sget-object v2, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v2

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Lbsh/UtilEvalError;
    invoke-virtual {v2, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v3

    throw v3
.end method

.method evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .locals 1
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->insureNodesParsed()V

    .line 86
    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->returnTypeNode:Lbsh/BSHReturnType;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1, p2}, Lbsh/BSHReturnType;->evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getReturnTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "defaultPackage"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->insureNodesParsed()V

    .line 96
    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->returnTypeNode:Lbsh/BSHReturnType;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHReturnType;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getReturnTypeNode()Lbsh/BSHReturnType;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->insureNodesParsed()V

    .line 105
    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->returnTypeNode:Lbsh/BSHReturnType;

    return-object v0
.end method

.method declared-synchronized insureNodesParsed()V
    .locals 5

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 59
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    .line 62
    .local v1, "firstNode":Ljava/lang/Object;
    const/4 v2, 0x1

    iput v2, p0, Lbsh/BSHMethodDeclaration;->firstThrowsClause:I

    .line 63
    instance-of v3, v1, Lbsh/BSHReturnType;

    if-eqz v3, :cond_2

    .line 65
    move-object v0, v1

    check-cast v0, Lbsh/BSHReturnType;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->returnTypeNode:Lbsh/BSHReturnType;

    .line 66
    invoke-virtual {p0, v2}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHFormalParameters;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    .line 67
    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->jjtGetNumChildren()I

    move-result v0

    iget v3, p0, Lbsh/BSHMethodDeclaration;->numThrows:I

    add-int/lit8 v4, v3, 0x2

    if-le v0, v4, :cond_1

    .line 68
    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->blockNode:Lbsh/BSHBlock;

    .line 69
    .end local p0    # "this":Lbsh/BSHMethodDeclaration;
    :cond_1
    iget v0, p0, Lbsh/BSHMethodDeclaration;->firstThrowsClause:I

    add-int/2addr v0, v2

    iput v0, p0, Lbsh/BSHMethodDeclaration;->firstThrowsClause:I

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHFormalParameters;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    .line 74
    iget v0, p0, Lbsh/BSHMethodDeclaration;->numThrows:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->blockNode:Lbsh/BSHBlock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    .line 57
    .end local v1    # "firstNode":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodDeclaration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
