.class Lbsh/BSHForStatement;
.super Lbsh/SimpleNode;
.source "BSHForStatement.java"

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field private expression:Lbsh/SimpleNode;

.field private forInit:Lbsh/SimpleNode;

.field private forUpdate:Lbsh/SimpleNode;

.field public hasExpression:Z

.field public hasForInit:Z

.field public hasForUpdate:Z

.field private parsed:Z

.field private statement:Lbsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 47
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

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "i":I
    iget-boolean v1, p0, Lbsh/BSHForStatement;->hasForInit:Z

    if-eqz v1, :cond_0

    .line 54
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->forInit:Lbsh/SimpleNode;

    move v0, v1

    .line 55
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iget-boolean v1, p0, Lbsh/BSHForStatement;->hasExpression:Z

    if-eqz v1, :cond_1

    .line 56
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->expression:Lbsh/SimpleNode;

    move v0, v1

    .line 57
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    iget-boolean v1, p0, Lbsh/BSHForStatement;->hasForUpdate:Z

    if-eqz v1, :cond_2

    .line 58
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->forUpdate:Lbsh/SimpleNode;

    move v0, v1

    .line 59
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lbsh/BSHForStatement;->jjtGetNumChildren()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 60
    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    iput-object v1, p0, Lbsh/BSHForStatement;->statement:Lbsh/SimpleNode;

    .line 62
    :cond_3
    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v1

    .line 63
    .local v1, "enclosingNameSpace":Lbsh/NameSpace;
    new-instance v2, Lbsh/BlockNameSpace;

    invoke-direct {v2, v1}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    .line 83
    .local v2, "forNameSpace":Lbsh/BlockNameSpace;
    invoke-virtual {p1, v2}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    .line 86
    iget-boolean v3, p0, Lbsh/BSHForStatement;->hasForInit:Z

    if-eqz v3, :cond_4

    .line 87
    iget-object v3, p0, Lbsh/BSHForStatement;->forInit:Lbsh/SimpleNode;

    invoke-virtual {v3, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    .line 89
    :cond_4
    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    .line 92
    .local v3, "returnControl":Ljava/lang/Object;
    :goto_0
    iget-boolean v4, p0, Lbsh/BSHForStatement;->hasExpression:Z

    if-eqz v4, :cond_5

    .line 94
    iget-object v4, p0, Lbsh/BSHForStatement;->expression:Lbsh/SimpleNode;

    invoke-static {v4, p1, p2}, Lbsh/BSHIfStatement;->evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z

    move-result v4

    .line 97
    .local v4, "cond":Z
    if-nez v4, :cond_5

    .line 98
    goto :goto_2

    .line 101
    .end local v4    # "cond":Z
    :cond_5
    const/4 v4, 0x0

    .line 102
    .local v4, "breakout":Z
    iget-object v5, p0, Lbsh/BSHForStatement;->statement:Lbsh/SimpleNode;

    if-eqz v5, :cond_6

    .line 105
    invoke-virtual {v5, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v5

    .line 107
    .local v5, "ret":Ljava/lang/Object;
    instance-of v6, v5, Lbsh/ReturnControl;

    if-eqz v6, :cond_6

    .line 109
    move-object v6, v5

    check-cast v6, Lbsh/ReturnControl;

    iget v6, v6, Lbsh/ReturnControl;->kind:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    .line 112
    :sswitch_0
    move-object v3, v5

    .line 113
    const/4 v4, 0x1

    .line 114
    goto :goto_1

    .line 117
    :sswitch_1
    goto :goto_1

    .line 120
    :sswitch_2
    const/4 v4, 0x1

    .line 126
    .end local v5    # "ret":Ljava/lang/Object;
    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 127
    nop

    .line 133
    .end local v4    # "breakout":Z
    :goto_2
    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    .line 134
    return-object v3

    .line 129
    .restart local v4    # "breakout":Z
    :cond_7
    iget-boolean v5, p0, Lbsh/BSHForStatement;->hasForUpdate:Z

    if-eqz v5, :cond_8

    .line 130
    iget-object v5, p0, Lbsh/BSHForStatement;->forUpdate:Lbsh/SimpleNode;

    invoke-virtual {v5, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    .line 131
    .end local v4    # "breakout":Z
    :cond_8
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_2
        0x13 -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method
