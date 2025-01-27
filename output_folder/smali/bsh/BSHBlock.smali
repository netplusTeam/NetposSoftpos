.class Lbsh/BSHBlock;
.super Lbsh/SimpleNode;
.source "BSHBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/BSHBlock$NodeFilter;
    }
.end annotation


# instance fields
.field public isStatic:Z

.field public isSynchronized:Z


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 36
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/BSHBlock;->isSynchronized:Z

    .line 34
    iput-boolean v0, p0, Lbsh/BSHBlock;->isStatic:Z

    .line 36
    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "overrideNamespace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "syncValue":Ljava/lang/Object;
    iget-boolean v1, p0, Lbsh/BSHBlock;->isSynchronized:Z

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    .line 64
    .local v1, "exp":Lbsh/SimpleNode;
    invoke-virtual {v1, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .end local v1    # "exp":Lbsh/SimpleNode;
    :cond_0
    iget-boolean v1, p0, Lbsh/BSHBlock;->isSynchronized:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 69
    monitor-enter v0

    .line 71
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v2}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "ret":Ljava/lang/Object;
    monitor-exit v0

    goto :goto_0

    .end local v1    # "ret":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v2}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    .restart local v1    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v1
.end method

.method evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;
    .locals 7
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "overrideNamespace"    # Z
    .param p4, "nodeFilter"    # Lbsh/BSHBlock$NodeFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 86
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    .line 87
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 88
    .local v1, "enclosingNameSpace":Lbsh/NameSpace;
    if-nez p3, :cond_0

    .line 90
    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v1

    .line 91
    new-instance v2, Lbsh/BlockNameSpace;

    invoke-direct {v2, v1}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    .line 94
    .local v2, "bodyNameSpace":Lbsh/BlockNameSpace;
    invoke-virtual {p1, v2}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    .line 97
    .end local v2    # "bodyNameSpace":Lbsh/BlockNameSpace;
    :cond_0
    iget-boolean v2, p0, Lbsh/BSHBlock;->isSynchronized:Z

    .line 98
    .local v2, "startChild":I
    invoke-virtual {p0}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v3

    .line 105
    .local v3, "numChildren":I
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 107
    :try_start_0
    invoke-virtual {p0, v4}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v5

    check-cast v5, Lbsh/SimpleNode;

    .line 109
    .local v5, "node":Lbsh/SimpleNode;
    if-eqz p4, :cond_1

    invoke-interface {p4, v5}, Lbsh/BSHBlock$NodeFilter;->isVisible(Lbsh/SimpleNode;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 110
    goto :goto_1

    .line 112
    :cond_1
    instance-of v6, v5, Lbsh/BSHClassDeclaration;

    if-eqz v6, :cond_2

    .line 113
    invoke-virtual {v5, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    .line 105
    .end local v5    # "node":Lbsh/SimpleNode;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    .end local v4    # "i":I
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 115
    :cond_3
    move v4, v2

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v3, :cond_8

    .line 117
    invoke-virtual {p0, v4}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v5

    check-cast v5, Lbsh/SimpleNode;

    .line 118
    .restart local v5    # "node":Lbsh/SimpleNode;
    instance-of v6, v5, Lbsh/BSHClassDeclaration;

    if-eqz v6, :cond_4

    .line 119
    goto :goto_3

    .line 122
    :cond_4
    if-eqz p4, :cond_5

    invoke-interface {p4, v5}, Lbsh/BSHBlock$NodeFilter;->isVisible(Lbsh/SimpleNode;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 123
    goto :goto_3

    .line 125
    :cond_5
    invoke-virtual {v5, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 128
    nop

    instance-of v6, v0, Lbsh/ReturnControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_6

    .line 129
    goto :goto_5

    .line 115
    .end local v5    # "node":Lbsh/SimpleNode;
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 133
    .end local v4    # "i":I
    :goto_4
    if-nez p3, :cond_7

    .line 134
    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    :cond_7
    throw v4

    .line 133
    :cond_8
    :goto_5
    if-nez p3, :cond_9

    .line 134
    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    .line 136
    :cond_9
    return-object v0
.end method
