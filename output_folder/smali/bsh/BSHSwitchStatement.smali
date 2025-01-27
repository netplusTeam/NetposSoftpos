.class Lbsh/BSHSwitchStatement;
.super Lbsh/SimpleNode;
.source "BSHSwitchStatement.java"

# interfaces
.implements Lbsh/ParserConstants;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 35
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private primitiveEquals(Ljava/lang/Object;Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Z
    .locals 3
    .param p1, "switchVal"    # Ljava/lang/Object;
    .param p2, "targetVal"    # Ljava/lang/Object;
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "switchExp"    # Lbsh/SimpleNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 114
    instance-of v0, p1, Lbsh/Primitive;

    if-nez v0, :cond_1

    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 117
    :cond_1
    :goto_0
    const/16 v0, 0x5a

    :try_start_0
    invoke-static {p1, p2, v0}, Lbsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 120
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 121
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lbsh/UtilEvalError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    invoke-virtual {p4}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v1

    throw v1
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

    .line 40
    invoke-virtual {p0}, Lbsh/BSHSwitchStatement;->jjtGetNumChildren()I

    move-result v0

    .line 41
    .local v0, "numchild":I
    const/4 v1, 0x0

    .line 42
    .local v1, "child":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "child":I
    .local v2, "child":I
    invoke-virtual {p0, v1}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    .line 43
    .local v1, "switchExp":Lbsh/SimpleNode;
    invoke-virtual {v1, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    .line 52
    .local v3, "switchVal":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 55
    .local v4, "returnControl":Lbsh/ReturnControl;
    if-ge v2, v0, :cond_8

    .line 57
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "child":I
    .local v5, "child":I
    invoke-virtual {p0, v2}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/BSHSwitchLabel;

    .line 60
    .local v2, "label":Lbsh/BSHSwitchLabel;
    :cond_0
    :goto_0
    if-ge v5, v0, :cond_6

    if-nez v4, :cond_6

    .line 63
    iget-boolean v6, v2, Lbsh/BSHSwitchLabel;->isDefault:Z

    if-nez v6, :cond_3

    .line 65
    invoke-virtual {v2, p1, p2}, Lbsh/BSHSwitchLabel;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6

    .line 64
    invoke-direct {p0, v3, v6, p1, v1}, Lbsh/BSHSwitchStatement;->primitiveEquals(Ljava/lang/Object;Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 88
    :cond_1
    :goto_1
    if-ge v5, v0, :cond_0

    .line 90
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "child":I
    .local v6, "child":I
    invoke-virtual {p0, v5}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v5

    .line 91
    .local v5, "node":Ljava/lang/Object;
    instance-of v7, v5, Lbsh/BSHSwitchLabel;

    if-eqz v7, :cond_2

    .line 92
    move-object v2, v5

    check-cast v2, Lbsh/BSHSwitchLabel;

    .line 93
    move v5, v6

    goto :goto_0

    .line 91
    :cond_2
    move v5, v6

    goto :goto_1

    .line 70
    .end local v6    # "child":I
    .local v5, "child":I
    :cond_3
    :goto_2
    if-ge v5, v0, :cond_0

    .line 72
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "child":I
    .restart local v6    # "child":I
    invoke-virtual {p0, v5}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v5

    .line 73
    .local v5, "node":Ljava/lang/Object;
    instance-of v7, v5, Lbsh/BSHSwitchLabel;

    if-eqz v7, :cond_4

    .line 74
    goto :goto_3

    .line 76
    :cond_4
    move-object v7, v5

    check-cast v7, Lbsh/SimpleNode;

    .line 77
    invoke-virtual {v7, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v7

    .line 80
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Lbsh/ReturnControl;

    if-eqz v8, :cond_5

    .line 81
    move-object v4, v7

    check-cast v4, Lbsh/ReturnControl;

    .line 82
    move v5, v6

    goto :goto_0

    .line 84
    .end local v7    # "value":Ljava/lang/Object;
    :cond_5
    nop

    .line 70
    .end local v5    # "node":Ljava/lang/Object;
    :goto_3
    move v5, v6

    goto :goto_2

    .line 99
    .end local v6    # "child":I
    .local v5, "child":I
    :cond_6
    if-eqz v4, :cond_7

    iget v6, v4, Lbsh/ReturnControl;->kind:I

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_7

    .line 100
    return-object v4

    .line 102
    :cond_7
    sget-object v6, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v6

    .line 56
    .end local v5    # "child":I
    .local v2, "child":I
    :cond_8
    new-instance v5, Lbsh/EvalError;

    const-string v6, "Empty switch statement."

    invoke-direct {v5, v6, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v5
.end method
