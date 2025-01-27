.class Lbsh/BSHArrayDimensions;
.super Lbsh/SimpleNode;
.source "BSHArrayDimensions.java"


# instance fields
.field public baseType:Ljava/lang/Class;

.field public definedDimensions:[I

.field public numDefinedDims:I

.field public numUndefinedDims:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 49
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addDefinedDimension()V
    .locals 1

    .line 51
    iget v0, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    return-void
.end method

.method public addUndefinedDimension()V
    .locals 1

    .line 52
    iget v0, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    return-void
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 9
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHArrayDimensions;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    .line 87
    .local v1, "child":Lbsh/SimpleNode;
    instance-of v2, v1, Lbsh/BSHArrayInitializer;

    if-eqz v2, :cond_4

    .line 89
    iget-object v2, p0, Lbsh/BSHArrayDimensions;->baseType:Ljava/lang/Class;

    if-eqz v2, :cond_3

    .line 94
    move-object v3, v1

    check-cast v3, Lbsh/BSHArrayInitializer;

    iget v4, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    invoke-virtual {v3, v2, v4, p1, p2}, Lbsh/BSHArrayInitializer;->eval(Ljava/lang/Class;ILbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, "initValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 98
    .local v3, "arrayClass":Ljava/lang/Class;
    invoke-static {v3}, Lbsh/Reflect;->getArrayDimensions(Ljava/lang/Class;)I

    move-result v4

    .line 99
    .local v4, "actualDimensions":I
    new-array v5, v4, [I

    iput-object v5, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    .line 103
    array-length v5, v5

    iget v6, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    if-ne v5, v6, :cond_2

    .line 110
    move-object v5, v2

    .line 111
    .local v5, "arraySlice":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    array-length v8, v7

    if-ge v6, v8, :cond_1

    .line 112
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    aput v8, v7, v6

    .line 113
    iget-object v7, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    aget v7, v7, v6

    if-lez v7, :cond_0

    .line 114
    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 111
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 117
    .end local v6    # "i":I
    :cond_1
    return-object v2

    .line 104
    .end local v5    # "arraySlice":Ljava/lang/Object;
    :cond_2
    new-instance v0, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incompatible initializer. Allocation calls for a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dimensional array, but initializer is a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dimensional array"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    .line 90
    .end local v2    # "initValue":Ljava/lang/Object;
    .end local v3    # "arrayClass":Ljava/lang/Class;
    .end local v4    # "actualDimensions":I
    :cond_3
    new-instance v0, Lbsh/EvalError;

    const-string v2, "Internal Array Eval err:  unknown base type"

    invoke-direct {v0, v2, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    .line 122
    :cond_4
    iget v0, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    if-ge v0, v2, :cond_5

    .line 127
    :try_start_0
    invoke-virtual {p0, v0}, Lbsh/BSHArrayDimensions;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/SimpleNode;

    invoke-virtual {v2, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "length":Ljava/lang/Object;
    iget-object v3, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    move-object v4, v2

    check-cast v4, Lbsh/Primitive;

    invoke-virtual {v4}, Lbsh/Primitive;->intValue()I

    move-result v4

    aput v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v2    # "length":Ljava/lang/Object;
    nop

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lbsh/EvalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Array index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not evaluate to an integer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3

    .line 140
    .end local v0    # "i":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v0
.end method

.method public eval(Ljava/lang/Class;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "callstack"    # Lbsh/CallStack;
    .param p3, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 58
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "array base type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 59
    :cond_0
    iput-object p1, p0, Lbsh/BSHArrayDimensions;->baseType:Ljava/lang/Class;

    .line 60
    invoke-virtual {p0, p2, p3}, Lbsh/BSHArrayDimensions;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
