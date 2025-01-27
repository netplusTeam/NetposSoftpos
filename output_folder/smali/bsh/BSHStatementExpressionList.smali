.class Lbsh/BSHStatementExpressionList;
.super Lbsh/SimpleNode;
.source "BSHStatementExpressionList.java"


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
    invoke-virtual {p0}, Lbsh/BSHStatementExpressionList;->jjtGetNumChildren()I

    move-result v0

    .line 39
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 41
    invoke-virtual {p0, v1}, Lbsh/BSHStatementExpressionList;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/SimpleNode;

    .line 42
    .local v2, "node":Lbsh/SimpleNode;
    invoke-virtual {v2, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    .line 39
    .end local v2    # "node":Lbsh/SimpleNode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v1
.end method
