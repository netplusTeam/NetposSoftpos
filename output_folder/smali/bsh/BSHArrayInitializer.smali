.class Lbsh/BSHArrayInitializer;
.super Lbsh/SimpleNode;
.source "BSHArrayInitializer.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 35
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private throwTypeError(Ljava/lang/Class;Ljava/lang/Object;ILbsh/CallStack;)V
    .locals 4
    .param p1, "baseType"    # Ljava/lang/Class;
    .param p2, "initializer"    # Ljava/lang/Object;
    .param p3, "argNum"    # I
    .param p4, "callstack"    # Lbsh/CallStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 129
    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_0

    .line 130
    move-object v0, p2

    check-cast v0, Lbsh/Primitive;

    .line 131
    invoke-virtual {v0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "rhsType":Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v0    # "rhsType":Ljava/lang/String;
    :cond_0
    nop

    .line 134
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .restart local v0    # "rhsType":Ljava/lang/String;
    :goto_0
    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incompatible type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in initializer of array type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, p4}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 40
    new-instance v0, Lbsh/EvalError;

    const-string v1, "Array initializer has no base type."

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0
.end method

.method public eval(Ljava/lang/Class;ILbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 11
    .param p1, "baseType"    # Ljava/lang/Class;
    .param p2, "dimensions"    # I
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lbsh/BSHArrayInitializer;->jjtGetNumChildren()I

    move-result v0

    .line 58
    .local v0, "numInitializers":I
    new-array v1, p2, [I

    .line 61
    .local v1, "dima":[I
    const/4 v2, 0x0

    aput v0, v1, v2

    .line 62
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    .line 65
    .local v3, "initializers":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 67
    invoke-virtual {p0, v4}, Lbsh/BSHArrayInitializer;->jjtGetChild(I)Lbsh/Node;

    move-result-object v5

    check-cast v5, Lbsh/SimpleNode;

    .line 69
    .local v5, "node":Lbsh/SimpleNode;
    instance-of v6, v5, Lbsh/BSHArrayInitializer;

    if-eqz v6, :cond_1

    .line 70
    const/4 v6, 0x2

    if-lt p2, v6, :cond_0

    .line 74
    move-object v6, v5

    check-cast v6, Lbsh/BSHArrayInitializer;

    add-int/lit8 v7, p2, -0x1

    .line 75
    invoke-virtual {v6, p1, v7, p3, p4}, Lbsh/BSHArrayInitializer;->eval(Ljava/lang/Class;ILbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "currentInitializer":Ljava/lang/Object;
    goto :goto_1

    .line 71
    .end local v6    # "currentInitializer":Ljava/lang/Object;
    :cond_0
    new-instance v2, Lbsh/EvalError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid Location for Intializer, position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2

    .line 78
    :cond_1
    invoke-virtual {v5, p3, p4}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6

    .line 80
    .restart local v6    # "currentInitializer":Ljava/lang/Object;
    :goto_1
    sget-object v7, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v6, v7, :cond_3

    .line 93
    move-object v7, v6

    .line 94
    .local v7, "value":Ljava/lang/Object;
    const/4 v8, 0x1

    if-ne p2, v8, :cond_2

    .line 99
    :try_start_0
    invoke-static {v6, p1, v2}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    .line 104
    nop

    .line 106
    invoke-static {v7}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Lbsh/UtilEvalError;
    const-string v8, "Error in array initializer"

    invoke-virtual {v2, v8, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v8

    throw v8

    .line 111
    .end local v2    # "e":Lbsh/UtilEvalError;
    :cond_2
    :goto_2
    :try_start_1
    invoke-static {v3, v4, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :goto_3
    goto :goto_4

    .line 115
    :catch_1
    move-exception v8

    .line 116
    .local v8, "e":Ljava/lang/ArrayStoreException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arraystore"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1, v6, v4, p3}, Lbsh/BSHArrayInitializer;->throwTypeError(Ljava/lang/Class;Ljava/lang/Object;ILbsh/CallStack;)V

    goto :goto_4

    .line 112
    .end local v8    # "e":Ljava/lang/ArrayStoreException;
    :catch_2
    move-exception v8

    .line 113
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal arg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1, v6, v4, p3}, Lbsh/BSHArrayInitializer;->throwTypeError(Ljava/lang/Class;Ljava/lang/Object;ILbsh/CallStack;)V

    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_3

    .line 65
    .end local v5    # "node":Lbsh/SimpleNode;
    .end local v6    # "currentInitializer":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Object;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 81
    .restart local v5    # "node":Lbsh/SimpleNode;
    .restart local v6    # "currentInitializer":Ljava/lang/Object;
    :cond_3
    new-instance v2, Lbsh/EvalError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Void in array initializer, position"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2

    .line 121
    .end local v4    # "i":I
    .end local v5    # "node":Lbsh/SimpleNode;
    .end local v6    # "currentInitializer":Ljava/lang/Object;
    :cond_4
    return-object v3
.end method
