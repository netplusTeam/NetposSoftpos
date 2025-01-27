.class Lbsh/BSHIfStatement;
.super Lbsh/SimpleNode;
.source "BSHIfStatement.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 33
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method public static evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z
    .locals 3
    .param p0, "condExp"    # Lbsh/SimpleNode;
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lbsh/Primitive;

    if-eqz v1, :cond_1

    .line 59
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v0, v1, :cond_0

    .line 62
    move-object v1, v0

    check-cast v1, Lbsh/Primitive;

    invoke-virtual {v1}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Lbsh/EvalError;

    const-string v2, "Condition evaluates to void type"

    invoke-direct {v1, v2, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    .line 65
    :cond_1
    :goto_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 66
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 68
    :cond_2
    new-instance v1, Lbsh/EvalError;

    const-string v2, "Condition must evaluate to a Boolean or boolean."

    invoke-direct {v1, v2, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1
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

    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "ret":Ljava/lang/Object;
    nop

    .line 41
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/BSHIfStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    .line 40
    invoke-static {v1, p1, p2}, Lbsh/BSHIfStatement;->evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbsh/BSHIfStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    invoke-virtual {v1, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lbsh/BSHIfStatement;->jjtGetNumChildren()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 45
    invoke-virtual {p0, v2}, Lbsh/BSHIfStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    invoke-virtual {v1, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    :cond_1
    :goto_0
    instance-of v1, v0, Lbsh/ReturnControl;

    if-eqz v1, :cond_2

    .line 48
    return-object v0

    .line 50
    :cond_2
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v1
.end method
