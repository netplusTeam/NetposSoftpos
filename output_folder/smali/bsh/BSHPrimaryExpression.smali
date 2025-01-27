.class Lbsh/BSHPrimaryExpression;
.super Lbsh/SimpleNode;
.source "BSHPrimaryExpression.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 33
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private eval(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 4
    .param p1, "toLHS"    # Z
    .param p2, "callstack"    # Lbsh/CallStack;
    .param p3, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHPrimaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    .line 71
    .local v0, "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lbsh/BSHPrimaryExpression;->jjtGetNumChildren()I

    move-result v1

    .line 73
    .local v1, "numChildren":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 74
    invoke-virtual {p0, v2}, Lbsh/BSHPrimaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v3

    check-cast v3, Lbsh/BSHPrimarySuffix;

    invoke-virtual {v3, v0, p1, p2, p3}, Lbsh/BSHPrimarySuffix;->doSuffix(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    :cond_0
    instance-of v2, v0, Lbsh/SimpleNode;

    if-eqz v2, :cond_4

    .line 82
    instance-of v2, v0, Lbsh/BSHAmbiguousName;

    if-eqz v2, :cond_2

    .line 83
    if-eqz p1, :cond_1

    .line 84
    move-object v2, v0

    check-cast v2, Lbsh/BSHAmbiguousName;

    invoke-virtual {v2, p2, p3}, Lbsh/BSHAmbiguousName;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_1
    move-object v2, v0

    check-cast v2, Lbsh/BSHAmbiguousName;

    invoke-virtual {v2, p2, p3}, Lbsh/BSHAmbiguousName;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 91
    :cond_2
    if-nez p1, :cond_3

    .line 96
    move-object v2, v0

    check-cast v2, Lbsh/SimpleNode;

    invoke-virtual {v2, p2, p3}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 93
    :cond_3
    new-instance v2, Lbsh/EvalError;

    const-string v3, "Can\'t assign to prefix."

    invoke-direct {v2, v3, p0, p2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2

    .line 99
    :cond_4
    :goto_1
    instance-of v2, v0, Lbsh/LHS;

    if-eqz v2, :cond_6

    .line 100
    if-eqz p1, :cond_5

    .line 101
    return-object v0

    .line 104
    :cond_5
    :try_start_0
    move-object v2, v0

    check-cast v2, Lbsh/LHS;

    invoke-virtual {v2}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Lbsh/UtilEvalError;
    invoke-virtual {v2, p0, p2}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v3

    throw v3

    .line 109
    .end local v2    # "e":Lbsh/UtilEvalError;
    :cond_6
    return-object v0
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lbsh/BSHPrimaryExpression;->eval(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;
    .locals 3
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lbsh/BSHPrimaryExpression;->eval(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lbsh/LHS;

    if-eqz v1, :cond_0

    .line 55
    move-object v1, v0

    check-cast v1, Lbsh/LHS;

    return-object v1

    .line 53
    :cond_0
    new-instance v1, Lbsh/EvalError;

    const-string v2, "Can\'t assign to:"

    invoke-direct {v1, v2, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1
.end method
