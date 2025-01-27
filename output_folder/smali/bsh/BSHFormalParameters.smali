.class Lbsh/BSHFormalParameters;
.super Lbsh/SimpleNode;
.source "BSHFormalParameters.java"


# instance fields
.field numArgs:I

.field private paramNames:[Ljava/lang/String;

.field paramTypes:[Ljava/lang/Class;

.field typeDescriptors:[Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 41
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

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

    .line 92
    iget-object v0, p0, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 93
    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->insureParsed()V

    .line 96
    iget v0, p0, Lbsh/BSHFormalParameters;->numArgs:I

    new-array v0, v0, [Ljava/lang/Class;

    .line 98
    .local v0, "paramTypes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lbsh/BSHFormalParameters;->numArgs:I

    if-ge v1, v2, :cond_1

    .line 100
    invoke-virtual {p0, v1}, Lbsh/BSHFormalParameters;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/BSHFormalParameter;

    .line 101
    .local v2, "param":Lbsh/BSHFormalParameter;
    invoke-virtual {v2, p1, p2}, Lbsh/BSHFormalParameter;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v0, v1

    .line 98
    .end local v2    # "param":Lbsh/BSHFormalParameter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_1
    iput-object v0, p0, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    .line 106
    return-object v0
.end method

.method public getParamNames()[Ljava/lang/String;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->insureParsed()V

    .line 62
    iget-object v0, p0, Lbsh/BSHFormalParameters;->paramNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDescriptors(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "defaultPackage"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lbsh/BSHFormalParameters;->typeDescriptors:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->insureParsed()V

    .line 72
    iget v0, p0, Lbsh/BSHFormalParameters;->numArgs:I

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    .local v0, "typeDesc":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lbsh/BSHFormalParameters;->numArgs:I

    if-ge v1, v2, :cond_1

    .line 76
    invoke-virtual {p0, v1}, Lbsh/BSHFormalParameters;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/BSHFormalParameter;

    .line 77
    .local v2, "param":Lbsh/BSHFormalParameter;
    invoke-virtual {v2, p1, p2, p3}, Lbsh/BSHFormalParameter;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 74
    .end local v2    # "param":Lbsh/BSHFormalParameter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "i":I
    :cond_1
    iput-object v0, p0, Lbsh/BSHFormalParameters;->typeDescriptors:[Ljava/lang/String;

    .line 82
    return-object v0
.end method

.method insureParsed()V
    .locals 4

    .line 45
    iget-object v0, p0, Lbsh/BSHFormalParameters;->paramNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lbsh/BSHFormalParameters;->jjtGetNumChildren()I

    move-result v0

    iput v0, p0, Lbsh/BSHFormalParameters;->numArgs:I

    .line 49
    new-array v0, v0, [Ljava/lang/String;

    .line 51
    .local v0, "paramNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lbsh/BSHFormalParameters;->numArgs:I

    if-ge v1, v2, :cond_1

    .line 53
    invoke-virtual {p0, v1}, Lbsh/BSHFormalParameters;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/BSHFormalParameter;

    .line 54
    .local v2, "param":Lbsh/BSHFormalParameter;
    iget-object v3, v2, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 51
    .end local v2    # "param":Lbsh/BSHFormalParameter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_1
    iput-object v0, p0, Lbsh/BSHFormalParameters;->paramNames:[Ljava/lang/String;

    .line 58
    return-void
.end method
