.class Lbsh/BSHThrowStatement;
.super Lbsh/SimpleNode;
.source "BSHThrowStatement.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 33
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
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

    invoke-virtual {p0, v0}, Lbsh/BSHThrowStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lbsh/EvalError;

    const-string v2, "Expression in \'throw\' must be Exception type"

    invoke-direct {v1, v2, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    .line 47
    :cond_0
    new-instance v1, Lbsh/TargetError;

    move-object v2, v0

    check-cast v2, Ljava/lang/Exception;

    invoke-direct {v1, v2, p0, p1}, Lbsh/TargetError;-><init>(Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1
.end method
