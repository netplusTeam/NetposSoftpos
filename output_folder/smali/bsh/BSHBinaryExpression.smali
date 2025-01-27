.class Lbsh/BSHBinaryExpression;
.super Lbsh/SimpleNode;
.source "BSHBinaryExpression.java"

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public kind:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 41
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private isPrimitiveValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 210
    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_0

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p1, v0, :cond_0

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWrapper(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 218
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHBinaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "lhs":Ljava/lang/Object;
    iget v1, p0, Lbsh/BSHBinaryExpression;->kind:I

    const/4 v2, 0x1

    const/16 v3, 0x23

    if-ne v1, v3, :cond_3

    .line 54
    sget-object v1, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne v0, v1, :cond_0

    .line 55
    sget-object v1, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    return-object v1

    .line 57
    :cond_0
    invoke-virtual {p0, v2}, Lbsh/BSHBinaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/BSHType;

    invoke-virtual {v1, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v1

    .line 70
    .local v1, "rhs":Ljava/lang/Class;
    instance-of v2, v0, Lbsh/Primitive;

    if-eqz v2, :cond_2

    .line 71
    const-class v2, Lbsh/Primitive;

    if-ne v1, v2, :cond_1

    .line 72
    sget-object v2, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    return-object v2

    .line 74
    :cond_1
    sget-object v2, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    return-object v2

    .line 77
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lbsh/Types;->isJavaBaseAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    .line 78
    .local v2, "ret":Z
    new-instance v3, Lbsh/Primitive;

    invoke-direct {v3, v2}, Lbsh/Primitive;-><init>(Z)V

    return-object v3

    .line 89
    .end local v1    # "rhs":Ljava/lang/Class;
    .end local v2    # "ret":Z
    :cond_3
    const/16 v3, 0x62

    if-eq v1, v3, :cond_4

    const/16 v3, 0x63

    if-ne v1, v3, :cond_6

    .line 90
    :cond_4
    move-object v1, v0

    .line 91
    .local v1, "obj":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lbsh/BSHBinaryExpression;->isPrimitiveValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 92
    move-object v3, v0

    check-cast v3, Lbsh/Primitive;

    invoke-virtual {v3}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 93
    :cond_5
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    .line 94
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    .line 95
    sget-object v2, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    return-object v2

    .line 101
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_6
    iget v1, p0, Lbsh/BSHBinaryExpression;->kind:I

    const/16 v3, 0x60

    if-eq v1, v3, :cond_7

    const/16 v3, 0x61

    if-ne v1, v3, :cond_9

    .line 102
    :cond_7
    move-object v1, v0

    .line 103
    .restart local v1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lbsh/BSHBinaryExpression;->isPrimitiveValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 104
    move-object v3, v0

    check-cast v3, Lbsh/Primitive;

    invoke-virtual {v3}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 105
    :cond_8
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    .line 106
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v2, :cond_9

    .line 107
    sget-object v2, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    return-object v2

    .line 116
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_9
    invoke-direct {p0, v0}, Lbsh/BSHBinaryExpression;->isWrapper(Ljava/lang/Object;)Z

    move-result v1

    .line 117
    .local v1, "isLhsWrapper":Z
    invoke-virtual {p0, v2}, Lbsh/BSHBinaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/SimpleNode;

    invoke-virtual {v2, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, "rhs":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lbsh/BSHBinaryExpression;->isWrapper(Ljava/lang/Object;)Z

    move-result v3

    .line 119
    .local v3, "isRhsWrapper":Z
    if-nez v1, :cond_a

    .line 120
    invoke-direct {p0, v0}, Lbsh/BSHBinaryExpression;->isPrimitiveValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_a
    if-nez v3, :cond_b

    .line 121
    invoke-direct {p0, v2}, Lbsh/BSHBinaryExpression;->isPrimitiveValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 125
    :cond_b
    if-eqz v1, :cond_15

    if-eqz v3, :cond_15

    iget v4, p0, Lbsh/BSHBinaryExpression;->kind:I

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_15

    .line 176
    :cond_c
    iget v4, p0, Lbsh/BSHBinaryExpression;->kind:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    .line 185
    :sswitch_0
    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_d

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 186
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 182
    :sswitch_1
    if-eq v0, v2, :cond_e

    sget-object v4, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    goto :goto_0

    :cond_e
    sget-object v4, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    :goto_0
    return-object v4

    .line 179
    :sswitch_2
    if-ne v0, v2, :cond_f

    sget-object v4, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    goto :goto_1

    :cond_f
    sget-object v4, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    :goto_1
    return-object v4

    .line 191
    :cond_10
    :goto_2
    instance-of v4, v0, Lbsh/Primitive;

    if-nez v4, :cond_11

    instance-of v4, v2, Lbsh/Primitive;

    if-eqz v4, :cond_12

    .line 192
    :cond_11
    sget-object v4, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v0, v4, :cond_14

    sget-object v4, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v2, v4, :cond_14

    .line 197
    sget-object v4, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq v0, v4, :cond_13

    sget-object v4, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne v2, v4, :cond_12

    goto :goto_3

    .line 201
    :cond_12
    new-instance v4, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Operator: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lbsh/BSHBinaryExpression;->tokenImage:[Ljava/lang/String;

    iget v7, p0, Lbsh/BSHBinaryExpression;->kind:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' inappropriate for objects"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v4

    .line 198
    :cond_13
    :goto_3
    new-instance v4, Lbsh/EvalError;

    const-string v5, "illegal use of null value or \'null\' literal"

    invoke-direct {v4, v5, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v4

    .line 193
    :cond_14
    new-instance v4, Lbsh/EvalError;

    const-string v5, "illegal use of undefined variable, class, or \'void\' literal"

    invoke-direct {v4, v5, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v4

    .line 133
    :cond_15
    :try_start_0
    iget v4, p0, Lbsh/BSHBinaryExpression;->kind:I

    invoke-static {v0, v2, v4}, Lbsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 134
    :catch_0
    move-exception v4

    .line 135
    .local v4, "e":Lbsh/UtilEvalError;
    invoke-virtual {v4, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v5

    throw v5

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0x5f -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method
