.class Lbsh/BSHArguments;
.super Lbsh/SimpleNode;
.source "BSHArguments.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 33
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getArguments(Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;
    .locals 5
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lbsh/BSHArguments;->jjtGetNumChildren()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 59
    invoke-virtual {p0, v1}, Lbsh/BSHArguments;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/SimpleNode;

    invoke-virtual {v2, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    aget-object v2, v0, v1

    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v2, v3, :cond_0

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    new-instance v2, Lbsh/EvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 62
    invoke-virtual {p0, v1}, Lbsh/BSHArguments;->jjtGetChild(I)Lbsh/Node;

    move-result-object v4

    check-cast v4, Lbsh/SimpleNode;

    invoke-virtual {v4}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2

    .line 65
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method
