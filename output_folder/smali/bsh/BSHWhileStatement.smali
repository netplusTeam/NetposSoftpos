.class Lbsh/BSHWhileStatement;
.super Lbsh/SimpleNode;
.source "BSHWhileStatement.java"

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field isDoStatement:Z


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 43
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lbsh/BSHWhileStatement;->jjtGetNumChildren()I

    move-result v0

    .line 52
    .local v0, "numChild":I
    iget-boolean v1, p0, Lbsh/BSHWhileStatement;->isDoStatement:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0, v3}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    .line 54
    .local v1, "condExp":Lbsh/SimpleNode;
    invoke-virtual {p0, v2}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/SimpleNode;

    .local v2, "body":Lbsh/SimpleNode;
    goto :goto_0

    .line 56
    .end local v1    # "condExp":Lbsh/SimpleNode;
    .end local v2    # "body":Lbsh/SimpleNode;
    :cond_0
    invoke-virtual {p0, v2}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    .line 57
    .restart local v1    # "condExp":Lbsh/SimpleNode;
    if-le v0, v3, :cond_1

    .line 58
    invoke-virtual {p0, v3}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/SimpleNode;

    .restart local v2    # "body":Lbsh/SimpleNode;
    goto :goto_0

    .line 60
    .end local v2    # "body":Lbsh/SimpleNode;
    :cond_1
    const/4 v2, 0x0

    .line 63
    .restart local v2    # "body":Lbsh/SimpleNode;
    :goto_0
    iget-boolean v3, p0, Lbsh/BSHWhileStatement;->isDoStatement:Z

    .line 64
    .local v3, "doOnceFlag":Z
    :goto_1
    if-nez v3, :cond_3

    invoke-static {v1, p1, p2}, Lbsh/BSHIfStatement;->evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 84
    :cond_2
    sget-object v4, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v4

    .line 65
    :cond_3
    :goto_2
    const/4 v3, 0x0

    .line 67
    if-nez v2, :cond_4

    .line 68
    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {v2, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v4

    .line 71
    .local v4, "ret":Ljava/lang/Object;
    instance-of v5, v4, Lbsh/ReturnControl;

    if-eqz v5, :cond_5

    .line 72
    move-object v5, v4

    check-cast v5, Lbsh/ReturnControl;

    iget v5, v5, Lbsh/ReturnControl;->kind:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_3

    .line 74
    :sswitch_0
    return-object v4

    .line 77
    :sswitch_1
    goto :goto_3

    .line 80
    :sswitch_2
    sget-object v5, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v5

    .line 83
    .end local v4    # "ret":Ljava/lang/Object;
    :cond_5
    :goto_3
    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_2
        0x13 -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method
