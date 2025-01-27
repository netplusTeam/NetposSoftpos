.class Lbsh/BSHCastExpression;
.super Lbsh/SimpleNode;
.source "BSHCastExpression.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 40
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 7
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    .line 49
    .local v0, "namespace":Lbsh/NameSpace;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/BSHCastExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/BSHType;

    invoke-virtual {v2, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v2

    .line 51
    .local v2, "toType":Ljava/lang/Class;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lbsh/BSHCastExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v3

    check-cast v3, Lbsh/SimpleNode;

    .line 54
    .local v3, "expression":Lbsh/SimpleNode;
    invoke-virtual {v3, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v4

    .line 55
    .local v4, "fromValue":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 60
    .local v5, "fromType":Ljava/lang/Class;
    :try_start_0
    invoke-static {v4, v2, v1}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Lbsh/UtilEvalError;
    invoke-virtual {v1, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v6

    throw v6
.end method
