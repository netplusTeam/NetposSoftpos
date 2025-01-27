.class Lbsh/BSHTernaryExpression;
.super Lbsh/SimpleNode;
.source "BSHTernaryExpression.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 38
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

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHTernaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    .line 45
    .local v0, "cond":Lbsh/SimpleNode;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbsh/BSHTernaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    .line 46
    .local v1, "evalTrue":Lbsh/SimpleNode;
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lbsh/BSHTernaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/SimpleNode;

    .line 48
    .local v2, "evalFalse":Lbsh/SimpleNode;
    invoke-static {v0, p1, p2}, Lbsh/BSHIfStatement;->evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v1, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 51
    :cond_0
    invoke-virtual {v2, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method
