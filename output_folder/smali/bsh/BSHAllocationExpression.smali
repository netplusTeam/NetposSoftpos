.class Lbsh/BSHAllocationExpression;
.super Lbsh/SimpleNode;
.source "BSHAllocationExpression.java"


# static fields
.field private static innerClassCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput v0, Lbsh/BSHAllocationExpression;->innerClassCount:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 39
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private arrayAllocation(Lbsh/BSHArrayDimensions;Ljava/lang/Class;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2
    .param p1, "dimensionsNode"    # Lbsh/BSHArrayDimensions;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 258
    invoke-virtual {p1, p2, p3, p4}, Lbsh/BSHArrayDimensions;->eval(Ljava/lang/Class;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v0, v1, :cond_0

    .line 260
    return-object v0

    .line 262
    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lbsh/BSHAllocationExpression;->arrayNewInstance(Ljava/lang/Class;Lbsh/BSHArrayDimensions;Lbsh/CallStack;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private arrayNewInstance(Ljava/lang/Class;Lbsh/BSHArrayDimensions;Lbsh/CallStack;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "dimensionsNode"    # Lbsh/BSHArrayDimensions;
    .param p3, "callstack"    # Lbsh/CallStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 299
    iget v0, p2, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    if-lez v0, :cond_0

    .line 301
    iget v0, p2, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    new-array v0, v0, [I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, "proto":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 307
    .end local v0    # "proto":Ljava/lang/Object;
    :cond_0
    :try_start_0
    iget-object v0, p2, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t construct primitive array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 310
    .local v0, "e1":Ljava/lang/NegativeArraySizeException;
    new-instance v1, Lbsh/TargetError;

    invoke-direct {v1, v0, p0, p3}, Lbsh/TargetError;-><init>(Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1
.end method

.method private constructObject(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/CallStack;)Ljava/lang/Object;
    .locals 8
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "callstack"    # Lbsh/CallStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-static {p1, p2}, Lbsh/Reflect;->constructObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    .local v0, "obj":Ljava/lang/Object;
    nop

    .line 130
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "className":Ljava/lang/String;
    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 133
    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v3

    .line 142
    .local v3, "ths":Lbsh/This;
    nop

    .line 143
    invoke-virtual {v3}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v4

    invoke-static {v4}, Lbsh/Name;->getClassNameSpace(Lbsh/NameSpace;)Lbsh/NameSpace;

    move-result-object v4

    .line 149
    .local v4, "instanceNameSpace":Lbsh/NameSpace;
    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    invoke-virtual {v4}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :try_start_1
    invoke-static {}, Lbsh/ClassGenerator;->getClassGenerator()Lbsh/ClassGenerator;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4}, Lbsh/ClassGenerator;->setInstanceNameSpaceParent(Ljava/lang/Object;Ljava/lang/String;Lbsh/NameSpace;)V
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Lbsh/UtilEvalError;
    invoke-virtual {v2, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v5

    throw v5

    .line 161
    .end local v2    # "e":Lbsh/UtilEvalError;
    :cond_1
    :goto_0
    return-object v0

    .line 121
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "ths":Lbsh/This;
    .end local v4    # "instanceNameSpace":Lbsh/NameSpace;
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The constructor threw an exception:\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lbsh/TargetError;

    .line 126
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    const/4 v7, 0x1

    const-string v3, "Object constructor"

    move-object v2, v1

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw v1

    .line 118
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 119
    .local v0, "e":Lbsh/ReflectError;
    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 120
    invoke-virtual {v0}, Lbsh/ReflectError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1
.end method

.method private constructWithClassBody(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 14
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "block"    # Lbsh/BSHBlock;
    .param p4, "callstack"    # Lbsh/CallStack;
    .param p5, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 176
    move-object v1, p0

    move-object/from16 v11, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lbsh/BSHAllocationExpression;->innerClassCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lbsh/BSHAllocationExpression;->innerClassCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, "name":Ljava/lang/String;
    new-instance v0, Lbsh/Modifiers;

    invoke-direct {v0}, Lbsh/Modifiers;-><init>()V

    move-object v13, v0

    .line 178
    .local v13, "modifiers":Lbsh/Modifiers;
    const/4 v0, 0x0

    const-string/jumbo v2, "public"

    invoke-virtual {v13, v0, v2}, Lbsh/Modifiers;->addModifier(ILjava/lang/String;)V

    .line 181
    :try_start_0
    invoke-static {}, Lbsh/ClassGenerator;->getClassGenerator()Lbsh/ClassGenerator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, v12

    move-object v4, v13

    move-object v6, p1

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v2 .. v10}, Lbsh/ClassGenerator;->generateClass(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 187
    .local v2, "clas":Ljava/lang/Class;
    nop

    .line 189
    move-object/from16 v3, p2

    :try_start_1
    invoke-static {v2, v3}, Lbsh/Reflect;->constructObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 190
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    nop

    instance-of v4, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_0

    .line 192
    move-object v4, v0

    check-cast v4, Ljava/lang/reflect/InvocationTargetException;

    .line 193
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Exception;

    .line 194
    :cond_0
    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    :cond_1
    new-instance v4, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error constructing inner class instance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p0, v11}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v4

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "clas":Ljava/lang/Class;
    :catch_1
    move-exception v0

    move-object/from16 v3, p2

    .line 186
    .local v0, "e":Lbsh/UtilEvalError;
    invoke-virtual {v0, p0, v11}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v2

    throw v2
.end method

.method private constructWithInterfaceBody(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "body"    # Lbsh/BSHBlock;
    .param p4, "callstack"    # Lbsh/CallStack;
    .param p5, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 207
    invoke-virtual {p4}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    .line 208
    .local v0, "namespace":Lbsh/NameSpace;
    new-instance v1, Lbsh/NameSpace;

    const-string v2, "AnonymousBlock"

    invoke-direct {v1, v0, v2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    .line 209
    .local v1, "local":Lbsh/NameSpace;
    invoke-virtual {p4, v1}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    .line 210
    const/4 v2, 0x1

    invoke-virtual {p3, p4, p5, v2}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    .line 211
    invoke-virtual {p4}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    .line 214
    invoke-virtual {v1, p1}, Lbsh/NameSpace;->importStatic(Ljava/lang/Class;)V

    .line 216
    :try_start_0
    invoke-virtual {v1, p5}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v2

    invoke-virtual {v2, p1}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Lbsh/UtilEvalError;
    invoke-virtual {v2, p0, p4}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v3

    throw v3
.end method

.method private objectAllocation(Lbsh/BSHAmbiguousName;Lbsh/BSHArguments;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 16
    .param p1, "nameNode"    # Lbsh/BSHAmbiguousName;
    .param p2, "argumentsNode"    # Lbsh/BSHArguments;
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 73
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {p3 .. p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v10

    .line 75
    .local v10, "namespace":Lbsh/NameSpace;
    invoke-virtual/range {p2 .. p4}, Lbsh/BSHArguments;->getArguments(Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;

    move-result-object v11

    .line 76
    .local v11, "args":[Ljava/lang/Object;
    if-eqz v11, :cond_4

    .line 80
    const/4 v0, 0x0

    invoke-virtual {v7, v8, v9, v0}, Lbsh/BSHAmbiguousName;->toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v1

    .line 85
    .local v1, "obj":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-virtual {v7, v8, v9, v2}, Lbsh/BSHAmbiguousName;->toObject(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v12

    .line 88
    .end local v1    # "obj":Ljava/lang/Object;
    .local v12, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 89
    .local v1, "type":Ljava/lang/Class;
    instance-of v3, v12, Lbsh/ClassIdentifier;

    if-eqz v3, :cond_3

    .line 90
    move-object v3, v12

    check-cast v3, Lbsh/ClassIdentifier;

    invoke-virtual {v3}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v13

    .line 96
    .end local v1    # "type":Ljava/lang/Class;
    .local v13, "type":Ljava/lang/Class;
    invoke-virtual/range {p0 .. p0}, Lbsh/BSHAllocationExpression;->jjtGetNumChildren()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    move v0, v2

    :cond_0
    move v14, v0

    .line 98
    .local v14, "hasBody":Z
    if-eqz v14, :cond_2

    .line 100
    invoke-virtual {v6, v3}, Lbsh/BSHAllocationExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lbsh/BSHBlock;

    .line 101
    .local v15, "body":Lbsh/BSHBlock;
    invoke-virtual {v13}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v11

    move-object v3, v15

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lbsh/BSHAllocationExpression;->constructWithInterfaceBody(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 105
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v11

    move-object v3, v15

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lbsh/BSHAllocationExpression;->constructWithClassBody(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 108
    .end local v15    # "body":Lbsh/BSHBlock;
    :cond_2
    invoke-direct {v6, v13, v11, v8}, Lbsh/BSHAllocationExpression;->constructObject(Ljava/lang/Class;[Ljava/lang/Object;Lbsh/CallStack;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 92
    .end local v13    # "type":Ljava/lang/Class;
    .end local v14    # "hasBody":Z
    .restart local v1    # "type":Ljava/lang/Class;
    :cond_3
    new-instance v0, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6, v8}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    .line 77
    .end local v1    # "type":Ljava/lang/Class;
    .end local v12    # "obj":Ljava/lang/Object;
    :cond_4
    new-instance v0, Lbsh/EvalError;

    const-string v1, "Null args in new."

    invoke-direct {v0, v1, v6, v8}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0
.end method

.method private objectArrayAllocation(Lbsh/BSHAmbiguousName;Lbsh/BSHArrayDimensions;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 5
    .param p1, "nameNode"    # Lbsh/BSHAmbiguousName;
    .param p2, "dimensionsNode"    # Lbsh/BSHArrayDimensions;
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 228
    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    .line 229
    .local v0, "namespace":Lbsh/NameSpace;
    invoke-virtual {p1, p3, p4}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v1

    .line 230
    .local v1, "type":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 234
    invoke-direct {p0, p2, v1, p3, p4}, Lbsh/BSHAllocationExpression;->arrayAllocation(Lbsh/BSHArrayDimensions;Ljava/lang/Class;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 231
    :cond_0
    new-instance v2, Lbsh/EvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Lbsh/BSHAmbiguousName;->getName(Lbsh/NameSpace;)Lbsh/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2
.end method

.method private primitiveArrayAllocation(Lbsh/BSHPrimitiveType;Lbsh/BSHArrayDimensions;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2
    .param p1, "typeNode"    # Lbsh/BSHPrimitiveType;
    .param p2, "dimensionsNode"    # Lbsh/BSHArrayDimensions;
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Lbsh/BSHPrimitiveType;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 245
    .local v0, "type":Ljava/lang/Class;
    invoke-direct {p0, p2, v0, p3, p4}, Lbsh/BSHAllocationExpression;->arrayAllocation(Lbsh/BSHArrayDimensions;Ljava/lang/Class;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 4
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHAllocationExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    .line 49
    .local v0, "type":Lbsh/SimpleNode;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbsh/BSHAllocationExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    .line 51
    .local v1, "args":Lbsh/SimpleNode;
    instance-of v2, v0, Lbsh/BSHAmbiguousName;

    if-eqz v2, :cond_1

    .line 53
    move-object v2, v0

    check-cast v2, Lbsh/BSHAmbiguousName;

    .line 55
    .local v2, "name":Lbsh/BSHAmbiguousName;
    instance-of v3, v1, Lbsh/BSHArguments;

    if-eqz v3, :cond_0

    .line 56
    move-object v3, v1

    check-cast v3, Lbsh/BSHArguments;

    invoke-direct {p0, v2, v3, p1, p2}, Lbsh/BSHAllocationExpression;->objectAllocation(Lbsh/BSHAmbiguousName;Lbsh/BSHArguments;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 59
    :cond_0
    move-object v3, v1

    check-cast v3, Lbsh/BSHArrayDimensions;

    invoke-direct {p0, v2, v3, p1, p2}, Lbsh/BSHAllocationExpression;->objectArrayAllocation(Lbsh/BSHAmbiguousName;Lbsh/BSHArrayDimensions;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 63
    .end local v2    # "name":Lbsh/BSHAmbiguousName;
    :cond_1
    move-object v2, v0

    check-cast v2, Lbsh/BSHPrimitiveType;

    move-object v3, v1

    check-cast v3, Lbsh/BSHArrayDimensions;

    invoke-direct {p0, v2, v3, p1, p2}, Lbsh/BSHAllocationExpression;->primitiveArrayAllocation(Lbsh/BSHPrimitiveType;Lbsh/BSHArrayDimensions;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
