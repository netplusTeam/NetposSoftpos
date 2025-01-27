.class Lbsh/BSHMethodInvocation;
.super Lbsh/SimpleNode;
.source "BSHMethodInvocation.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 35
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 18
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 52
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v10

    .line 53
    .local v10, "namespace":Lbsh/NameSpace;
    invoke-virtual/range {p0 .. p0}, Lbsh/BSHMethodInvocation;->getNameNode()Lbsh/BSHAmbiguousName;

    move-result-object v11

    .line 57
    .local v11, "nameNode":Lbsh/BSHAmbiguousName;
    invoke-virtual {v10}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    iget-boolean v0, v0, Lbsh/NameSpace;->isClass:Z

    if-eqz v0, :cond_1

    iget-object v0, v11, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    .line 58
    const-string/jumbo v1, "super"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v11, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    const-string/jumbo v1, "this"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v0

    .line 62
    :cond_1
    invoke-virtual {v11, v10}, Lbsh/BSHAmbiguousName;->getName(Lbsh/NameSpace;)Lbsh/Name;

    move-result-object v12

    .line 63
    .local v12, "name":Lbsh/Name;
    invoke-virtual/range {p0 .. p0}, Lbsh/BSHMethodInvocation;->getArgsNode()Lbsh/BSHArguments;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lbsh/BSHArguments;->getArguments(Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;

    move-result-object v13

    .line 69
    .local v13, "args":[Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v12, v9, v13, v8, v7}, Lbsh/Name;->invokeMethod(Lbsh/Interpreter;[Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 93
    .local v0, "e":Lbsh/UtilEvalError;
    invoke-virtual {v0, v7, v8}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v1

    throw v1

    .line 74
    .end local v0    # "e":Lbsh/UtilEvalError;
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 76
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method Invocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 77
    .local v14, "msg":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v15

    .line 84
    .local v15, "te":Ljava/lang/Throwable;
    const/4 v1, 0x1

    .line 85
    .local v1, "isNative":Z
    instance-of v2, v15, Lbsh/EvalError;

    if-eqz v2, :cond_3

    .line 86
    instance-of v2, v15, Lbsh/TargetError;

    if-eqz v2, :cond_2

    .line 87
    move-object v2, v15

    check-cast v2, Lbsh/TargetError;

    invoke-virtual {v2}, Lbsh/TargetError;->inNativeCode()Z

    move-result v1

    move/from16 v16, v1

    goto :goto_0

    .line 89
    :cond_2
    const/4 v1, 0x0

    move/from16 v16, v1

    goto :goto_0

    .line 85
    :cond_3
    move/from16 v16, v1

    .line 91
    .end local v1    # "isNative":Z
    .local v16, "isNative":Z
    :goto_0
    new-instance v17, Lbsh/TargetError;

    move-object/from16 v1, v17

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw v17

    .line 70
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v14    # "msg":Ljava/lang/String;
    .end local v15    # "te":Ljava/lang/Throwable;
    .end local v16    # "isNative":Z
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 71
    .local v0, "e":Lbsh/ReflectError;
    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in method invocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 72
    invoke-virtual {v0}, Lbsh/ReflectError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7, v8}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1
.end method

.method getArgsNode()Lbsh/BSHArguments;
    .locals 1

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHMethodInvocation;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHArguments;

    return-object v0
.end method

.method getNameNode()Lbsh/BSHAmbiguousName;
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHMethodInvocation;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHAmbiguousName;

    return-object v0
.end method
