.class Lbsh/BSHAssignment;
.super Lbsh/SimpleNode;
.source "BSHAssignment.java"

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public operator:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 35
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .param p3, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 150
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p2, v0, :cond_1

    .line 151
    const/16 v0, 0x66

    if-ne p3, v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Use of non + operator with String LHS"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    instance-of v0, p1, Lbsh/Primitive;

    if-nez v0, :cond_2

    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_3

    .line 159
    :cond_2
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p1, v0, :cond_8

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p2, v0, :cond_8

    .line 162
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p1, v0, :cond_7

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p2, v0, :cond_7

    .line 167
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_4

    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_5

    :cond_4
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_6

    instance-of v0, p2, Ljava/lang/Character;

    if-nez v0, :cond_6

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_6

    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 175
    :cond_5
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non primitive value in operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lbsh/BSHAssignment;->tokenImage:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_6
    :goto_0
    invoke-static {p1, p2, p3}, Lbsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 163
    :cond_7
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Illegal use of null object or \'null\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_8
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Illegal use of undefined object or \'void\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 8
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 41
    nop

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHAssignment;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHPrimaryExpression;

    .line 44
    .local v0, "lhsNode":Lbsh/BSHPrimaryExpression;
    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v1

    .line 48
    .local v1, "strictJava":Z
    invoke-virtual {v0, p1, p2}, Lbsh/BSHPrimaryExpression;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v2

    .line 49
    .local v2, "lhs":Lbsh/LHS;
    if-eqz v2, :cond_2

    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, "lhsValue":Ljava/lang/Object;
    iget v4, p0, Lbsh/BSHAssignment;->operator:I

    const/16 v5, 0x51

    if-eq v4, v5, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {v2}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v4

    .line 60
    .local v4, "e":Lbsh/UtilEvalError;
    invoke-virtual {v4, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v5

    throw v5

    .line 63
    .end local v4    # "e":Lbsh/UtilEvalError;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lbsh/BSHAssignment;->jjtGetChild(I)Lbsh/Node;

    move-result-object v4

    check-cast v4, Lbsh/SimpleNode;

    .line 71
    .local v4, "rhsNode":Lbsh/SimpleNode;
    invoke-virtual {v4, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v5

    .line 73
    .local v5, "rhs":Ljava/lang/Object;
    sget-object v6, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v5, v6, :cond_1

    .line 77
    :try_start_1
    iget v6, p0, Lbsh/BSHAssignment;->operator:I

    sparse-switch v6, :sswitch_data_0

    .line 133
    new-instance v6, Lbsh/InterpreterError;

    goto/16 :goto_1

    .line 128
    :sswitch_0
    const/16 v6, 0x74

    .line 129
    invoke-direct {p0, v3, v5, v6}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 128
    invoke-virtual {v2, v6, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 123
    :sswitch_1
    const/16 v6, 0x72

    .line 124
    invoke-direct {p0, v3, v5, v6}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 123
    invoke-virtual {v2, v6, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 118
    :sswitch_2
    const/16 v6, 0x70

    .line 119
    invoke-direct {p0, v3, v5, v6}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 118
    invoke-virtual {v2, v6, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 113
    :sswitch_3
    const/16 v6, 0x6f

    .line 114
    invoke-direct {p0, v3, v5, v6}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 113
    invoke-virtual {v2, v6, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 109
    :sswitch_4
    const/16 v6, 0x6e

    .line 110
    invoke-direct {p0, v3, v5, v6}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 109
    invoke-virtual {v2, v6, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 105
    :sswitch_5
    const/16 v6, 0x6c

    .line 106
    invoke-direct {p0, v3, v5, v6}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 105
    invoke-virtual {v2, v6, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 100
    :sswitch_6
    const/16 v6, 0x6a

    .line 101
    invoke-direct {p0, v3, v5, v6}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 100
    invoke-virtual {v2, v6, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 95
    :sswitch_7
    const/16 v6, 0x69

    .line 96
    invoke-direct {p0, v3, v5, v6}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 95
    invoke-virtual {v2, v6, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 91
    :sswitch_8
    const/16 v6, 0x68

    .line 92
    invoke-direct {p0, v3, v5, v6}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 91
    invoke-virtual {v2, v6, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 87
    :sswitch_9
    const/16 v6, 0x67

    .line 88
    invoke-direct {p0, v3, v5, v6}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 87
    invoke-virtual {v2, v6, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 83
    :sswitch_a
    const/16 v6, 0x66

    .line 84
    invoke-direct {p0, v3, v5, v6}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 83
    invoke-virtual {v2, v6, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 80
    :sswitch_b
    invoke-virtual {v2, v5, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 133
    :goto_1
    const-string/jumbo v7, "unimplemented operator in assignment BSH"

    invoke-direct {v6, v7}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    .end local v0    # "lhsNode":Lbsh/BSHPrimaryExpression;
    .end local v1    # "strictJava":Z
    .end local v2    # "lhs":Lbsh/LHS;
    .end local v3    # "lhsValue":Ljava/lang/Object;
    .end local v4    # "rhsNode":Lbsh/SimpleNode;
    .end local v5    # "rhs":Ljava/lang/Object;
    .end local p1    # "callstack":Lbsh/CallStack;
    .end local p2    # "interpreter":Lbsh/Interpreter;
    throw v6
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .restart local v0    # "lhsNode":Lbsh/BSHPrimaryExpression;
    .restart local v1    # "strictJava":Z
    .restart local v2    # "lhs":Lbsh/LHS;
    .restart local v3    # "lhsValue":Ljava/lang/Object;
    .restart local v4    # "rhsNode":Lbsh/SimpleNode;
    .restart local v5    # "rhs":Ljava/lang/Object;
    .restart local p1    # "callstack":Lbsh/CallStack;
    .restart local p2    # "interpreter":Lbsh/Interpreter;
    :catch_1
    move-exception v6

    .line 137
    .local v6, "e":Lbsh/UtilEvalError;
    invoke-virtual {v6, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v7

    throw v7

    .line 74
    .end local v6    # "e":Lbsh/UtilEvalError;
    :cond_1
    new-instance v6, Lbsh/EvalError;

    const-string v7, "Void assignment."

    invoke-direct {v6, v7, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v6

    .line 50
    .end local v3    # "lhsValue":Ljava/lang/Object;
    .end local v4    # "rhsNode":Lbsh/SimpleNode;
    .end local v5    # "rhs":Ljava/lang/Object;
    :cond_2
    new-instance v3, Lbsh/InterpreterError;

    const-string v4, "Error, null LHS"

    invoke-direct {v3, v4}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    .end local v1    # "strictJava":Z
    .end local v2    # "lhs":Lbsh/LHS;
    :cond_3
    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "Error, null LHSnode"

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x51 -> :sswitch_b
        0x76 -> :sswitch_a
        0x77 -> :sswitch_9
        0x78 -> :sswitch_8
        0x79 -> :sswitch_7
        0x7a -> :sswitch_6
        0x7b -> :sswitch_6
        0x7c -> :sswitch_5
        0x7d -> :sswitch_5
        0x7e -> :sswitch_4
        0x7f -> :sswitch_3
        0x80 -> :sswitch_2
        0x81 -> :sswitch_2
        0x82 -> :sswitch_1
        0x83 -> :sswitch_1
        0x84 -> :sswitch_0
        0x85 -> :sswitch_0
    .end sparse-switch
.end method
