.class Lbsh/BSHUnaryExpression;
.super Lbsh/SimpleNode;
.source "BSHUnaryExpression.java"

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public kind:I

.field public postfix:Z


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 36
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/BSHUnaryExpression;->postfix:Z

    .line 36
    return-void
.end method

.method private lhsUnaryOperation(Lbsh/LHS;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "lhs"    # Lbsh/LHS;
    .param p2, "strictJava"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 62
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "lhsUnaryOperation"

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-virtual {p1}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "prevalue":Ljava/lang/Object;
    iget v1, p0, Lbsh/BSHUnaryExpression;->kind:I

    invoke-direct {p0, v0, v1}, Lbsh/BSHUnaryExpression;->unaryOperation(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, "postvalue":Ljava/lang/Object;
    iget-boolean v2, p0, Lbsh/BSHUnaryExpression;->postfix:Z

    if-eqz v2, :cond_1

    .line 69
    move-object v2, v0

    .local v2, "retVal":Ljava/lang/Object;
    goto :goto_0

    .line 71
    .end local v2    # "retVal":Ljava/lang/Object;
    :cond_1
    move-object v2, v1

    .line 73
    .restart local v2    # "retVal":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, v1, p2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 74
    return-object v2
.end method

.method private primitiveWrapperUnaryOperation(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "operandType":Ljava/lang/Class;
    invoke-static {p1}, Lbsh/Primitive;->promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "operand":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 98
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2, p2}, Lbsh/Primitive;->booleanUnaryOperation(Ljava/lang/Boolean;I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v2

    .line 101
    :cond_1
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 103
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2, p2}, Lbsh/Primitive;->intUnaryOperation(Ljava/lang/Integer;I)I

    move-result v2

    .line 106
    .local v2, "result":I
    const/16 v3, 0x64

    if-eq p2, v3, :cond_2

    const/16 v3, 0x65

    if-ne p2, v3, :cond_5

    .line 108
    :cond_2
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_3

    .line 109
    new-instance v3, Ljava/lang/Byte;

    int-to-byte v4, v2

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    return-object v3

    .line 110
    :cond_3
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_4

    .line 111
    new-instance v3, Ljava/lang/Short;

    int-to-short v4, v2

    invoke-direct {v3, v4}, Ljava/lang/Short;-><init>(S)V

    return-object v3

    .line 112
    :cond_4
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_5

    .line 113
    new-instance v3, Ljava/lang/Character;

    int-to-char v4, v2

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    return-object v3

    .line 116
    :cond_5
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v3

    .line 118
    .end local v2    # "result":I
    :cond_6
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 119
    new-instance v2, Ljava/lang/Long;

    move-object v3, v1

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3, p2}, Lbsh/Primitive;->longUnaryOperation(Ljava/lang/Long;I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    return-object v2

    .line 120
    :cond_7
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_8

    .line 121
    new-instance v2, Ljava/lang/Float;

    move-object v3, v1

    check-cast v3, Ljava/lang/Float;

    invoke-static {v3, p2}, Lbsh/Primitive;->floatUnaryOperation(Ljava/lang/Float;I)F

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    return-object v2

    .line 122
    :cond_8
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_9

    .line 123
    new-instance v2, Ljava/lang/Double;

    move-object v3, v1

    check-cast v3, Ljava/lang/Double;

    invoke-static {v3, p2}, Lbsh/Primitive;->doubleUnaryOperation(Ljava/lang/Double;I)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    return-object v2

    .line 125
    :cond_9
    new-instance v2, Lbsh/InterpreterError;

    const-string v3, "An error occurred.  Please call technical support."

    invoke-direct {v2, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private unaryOperation(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p1, "op"    # Ljava/lang/Object;
    .param p2, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 79
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_1

    .line 88
    move-object v0, p1

    check-cast v0, Lbsh/Primitive;

    invoke-static {v0, p2}, Lbsh/Primitive;->unaryOperation(Lbsh/Primitive;I)Lbsh/Primitive;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unary operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lbsh/BSHUnaryExpression;->tokenImage:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inappropriate for object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lbsh/BSHUnaryExpression;->primitiveWrapperUnaryOperation(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHUnaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    .line 47
    .local v0, "node":Lbsh/SimpleNode;
    :try_start_0
    iget v1, p0, Lbsh/BSHUnaryExpression;->kind:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    nop

    .line 53
    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lbsh/BSHUnaryExpression;->kind:I

    invoke-direct {p0, v1, v2}, Lbsh/BSHUnaryExpression;->unaryOperation(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 48
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Lbsh/BSHPrimaryExpression;

    invoke-virtual {v1, p1, p2}, Lbsh/BSHPrimaryExpression;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v1

    .line 50
    .local v1, "lhs":Lbsh/LHS;
    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lbsh/BSHUnaryExpression;->lhsUnaryOperation(Lbsh/LHS;Z)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 54
    .end local v1    # "lhs":Lbsh/LHS;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Lbsh/UtilEvalError;
    invoke-virtual {v1, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v2

    throw v2
.end method
