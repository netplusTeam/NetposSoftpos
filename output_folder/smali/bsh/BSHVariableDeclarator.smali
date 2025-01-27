.class Lbsh/BSHVariableDeclarator;
.super Lbsh/SimpleNode;
.source "BSHVariableDeclarator.java"


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 40
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/BSHType;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 5
    .param p1, "typeNode"    # Lbsh/BSHType;
    .param p2, "callstack"    # Lbsh/CallStack;
    .param p3, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lbsh/BSHVariableDeclarator;->jjtGetNumChildren()I

    move-result v1

    if-lez v1, :cond_1

    .line 65
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/BSHVariableDeclarator;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    .line 73
    .local v1, "initializer":Lbsh/SimpleNode;
    if-eqz p1, :cond_0

    instance-of v2, v1, Lbsh/BSHArrayInitializer;

    if-eqz v2, :cond_0

    .line 76
    move-object v2, v1

    check-cast v2, Lbsh/BSHArrayInitializer;

    .line 77
    invoke-virtual {p1}, Lbsh/BSHType;->getBaseType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Lbsh/BSHType;->getArrayDims()I

    move-result v4

    .line 76
    invoke-virtual {v2, v3, v4, p2, p3}, Lbsh/BSHArrayInitializer;->eval(Ljava/lang/Class;ILbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1, p2, p3}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .end local v1    # "initializer":Lbsh/SimpleNode;
    :cond_1
    :goto_0
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v0, v1, :cond_2

    .line 86
    return-object v0

    .line 84
    :cond_2
    new-instance v1, Lbsh/EvalError;

    const-string v2, "Void initializer."

    invoke-direct {v1, v2, p0, p2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BSHVariableDeclarator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
