.class public Lbsh/EvalError;
.super Ljava/lang/Exception;
.source "EvalError.java"


# instance fields
.field callstack:Lbsh/CallStack;

.field message:Ljava/lang/String;

.field node:Lbsh/SimpleNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "node"    # Lbsh/SimpleNode;
    .param p3, "callstack"    # Lbsh/CallStack;

    .line 50
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lbsh/EvalError;->setMessage(Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    .line 54
    if-eqz p3, :cond_0

    .line 55
    invoke-virtual {p3}, Lbsh/CallStack;->copy()Lbsh/CallStack;

    move-result-object v0

    iput-object v0, p0, Lbsh/EvalError;->callstack:Lbsh/CallStack;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public getErrorLineNumber()I
    .locals 1

    .line 108
    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lbsh/SimpleNode;->getLineNumber()I

    move-result v0

    return v0

    .line 111
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getErrorSourceFile()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lbsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    const-string v0, "<unknown file>"

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    const-string v0, "<unknown error>"

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    return-object v0
.end method

.method getNode()Lbsh/SimpleNode;
    .locals 1

    .line 93
    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    return-object v0
.end method

.method public getScriptStackTrace()Ljava/lang/String;
    .locals 6

    .line 123
    iget-object v0, p0, Lbsh/EvalError;->callstack:Lbsh/CallStack;

    if-nez v0, :cond_0

    .line 124
    const-string v0, "<Unknown>"

    return-object v0

    .line 126
    :cond_0
    const-string v1, ""

    .line 127
    .local v1, "trace":Ljava/lang/String;
    invoke-virtual {v0}, Lbsh/CallStack;->copy()Lbsh/CallStack;

    move-result-object v0

    .line 128
    .local v0, "stack":Lbsh/CallStack;
    :goto_0
    invoke-virtual {v0}, Lbsh/CallStack;->depth()I

    move-result v2

    if-lez v2, :cond_2

    .line 130
    invoke-virtual {v0}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    move-result-object v2

    .line 131
    .local v2, "ns":Lbsh/NameSpace;
    invoke-virtual {v2}, Lbsh/NameSpace;->getNode()Lbsh/SimpleNode;

    move-result-object v3

    .line 132
    .local v3, "node":Lbsh/SimpleNode;
    iget-boolean v4, v2, Lbsh/NameSpace;->isMethod:Z

    if-eqz v4, :cond_1

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nCalled from method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    if-eqz v3, :cond_1

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : at Line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lbsh/SimpleNode;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : in file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 137
    invoke-virtual {v3}, Lbsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 138
    invoke-virtual {v3}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .end local v2    # "ns":Lbsh/NameSpace;
    .end local v3    # "node":Lbsh/SimpleNode;
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    return-object v1
.end method

.method protected prependMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 157
    if-nez p1, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 161
    iput-object p1, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    .line 164
    :goto_0
    return-void
.end method

.method public reThrow(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lbsh/EvalError;->prependMessage(Ljava/lang/String;)V

    .line 85
    throw p0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lbsh/EvalError;->message:Ljava/lang/String;

    return-void
.end method

.method setNode(Lbsh/SimpleNode;)V
    .locals 0
    .param p1, "node"    # Lbsh/SimpleNode;

    .line 97
    iput-object p1, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    iget-object v0, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : at Line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    invoke-virtual {v1}, Lbsh/SimpleNode;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : in file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    .line 66
    invoke-virtual {v1}, Lbsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/EvalError;->node:Lbsh/SimpleNode;

    .line 67
    invoke-virtual {v1}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "trace":Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v0    # "trace":Ljava/lang/String;
    :cond_0
    const-string v0, ": <at unknown location>"

    .line 72
    .restart local v0    # "trace":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lbsh/EvalError;->callstack:Lbsh/CallStack;

    if-eqz v1, :cond_1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbsh/EvalError;->getScriptStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
