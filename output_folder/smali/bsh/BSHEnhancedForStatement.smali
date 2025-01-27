.class Lbsh/BSHEnhancedForStatement;
.super Lbsh/SimpleNode;
.source "BSHEnhancedForStatement.java"

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field varName:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 45
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    .line 46
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

    .line 50
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    .line 52
    .local v0, "elementType":Ljava/lang/Class;
    const/4 v4, 0x0

    .line 53
    .local v4, "statement":Lbsh/SimpleNode;
    invoke-virtual/range {p1 .. p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v5

    .line 54
    .local v5, "enclosingNameSpace":Lbsh/NameSpace;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v7

    check-cast v7, Lbsh/SimpleNode;

    .line 55
    .local v7, "firstNode":Lbsh/SimpleNode;
    invoke-virtual/range {p0 .. p0}, Lbsh/BSHEnhancedForStatement;->jjtGetNumChildren()I

    move-result v8

    .line 56
    .local v8, "nodeCount":I
    instance-of v9, v7, Lbsh/BSHType;

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    .line 57
    move-object v9, v7

    check-cast v9, Lbsh/BSHType;

    invoke-virtual {v9, v2, v3}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    invoke-virtual {v1, v10}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v9

    check-cast v9, Lbsh/SimpleNode;

    .line 59
    .local v9, "expression":Lbsh/SimpleNode;
    const/4 v10, 0x2

    if-le v8, v10, :cond_0

    .line 60
    invoke-virtual {v1, v10}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v10

    move-object v4, v10

    check-cast v4, Lbsh/SimpleNode;

    move-object v10, v9

    move-object v9, v4

    move-object v4, v0

    goto :goto_0

    .line 59
    :cond_0
    move-object v10, v9

    move-object v9, v4

    move-object v4, v0

    goto :goto_0

    .line 63
    .end local v9    # "expression":Lbsh/SimpleNode;
    :cond_1
    move-object v9, v7

    .line 64
    .restart local v9    # "expression":Lbsh/SimpleNode;
    if-le v8, v10, :cond_2

    .line 65
    invoke-virtual {v1, v10}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v10

    move-object v4, v10

    check-cast v4, Lbsh/SimpleNode;

    move-object v10, v9

    move-object v9, v4

    move-object v4, v0

    goto :goto_0

    .line 64
    :cond_2
    move-object v10, v9

    move-object v9, v4

    move-object v4, v0

    .line 68
    .end local v0    # "elementType":Ljava/lang/Class;
    .local v4, "elementType":Ljava/lang/Class;
    .local v9, "statement":Lbsh/SimpleNode;
    .local v10, "expression":Lbsh/SimpleNode;
    :goto_0
    new-instance v0, Lbsh/BlockNameSpace;

    invoke-direct {v0, v5}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    move-object v11, v0

    .line 69
    .local v11, "eachNameSpace":Lbsh/BlockNameSpace;
    invoke-virtual {v2, v11}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    .line 70
    invoke-virtual {v10, v2, v3}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v12

    .line 71
    .local v12, "iteratee":Ljava/lang/Object;
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq v12, v0, :cond_9

    .line 74
    invoke-static {}, Lbsh/CollectionManager;->getCollectionManager()Lbsh/CollectionManager;

    move-result-object v13

    .line 75
    .local v13, "cm":Lbsh/CollectionManager;
    invoke-virtual {v13, v12}, Lbsh/CollectionManager;->isBshIterable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 78
    invoke-virtual {v13, v12}, Lbsh/CollectionManager;->getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;

    move-result-object v14

    .line 79
    .local v14, "iterator":Lbsh/BshIterator;
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    move-object v15, v0

    .line 80
    .local v15, "returnControl":Ljava/lang/Object;
    :goto_1
    invoke-interface {v14}, Lbsh/BshIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    :try_start_0
    invoke-interface {v14}, Lbsh/BshIterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_2

    .line 83
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 84
    :try_start_1
    sget-object v16, Lbsh/Primitive;->NULL:Lbsh/Primitive;
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, v16

    goto :goto_2

    .line 91
    .end local v0    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object/from16 v17, v7

    goto :goto_5

    .line 86
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 87
    :try_start_2
    iget-object v6, v1, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v7

    .end local v7    # "firstNode":Lbsh/SimpleNode;
    .local v17, "firstNode":Lbsh/SimpleNode;
    :try_start_3
    new-instance v7, Lbsh/Modifiers;

    invoke-direct {v7}, Lbsh/Modifiers;-><init>()V

    invoke-virtual {v11, v6, v4, v0, v7}, Lbsh/BlockNameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    const/4 v7, 0x0

    goto :goto_3

    .line 89
    .end local v17    # "firstNode":Lbsh/SimpleNode;
    .restart local v7    # "firstNode":Lbsh/SimpleNode;
    :cond_4
    move-object/from16 v17, v7

    .end local v7    # "firstNode":Lbsh/SimpleNode;
    .restart local v17    # "firstNode":Lbsh/SimpleNode;
    iget-object v6, v1, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v11, v6, v0, v7}, Lbsh/BlockNameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_3
    .catch Lbsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_1

    .line 93
    .end local v0    # "value":Ljava/lang/Object;
    :goto_3
    nop

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "breakout":Z
    if-eqz v9, :cond_5

    .line 97
    invoke-virtual {v9, v2, v3}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6

    .line 98
    .local v6, "ret":Ljava/lang/Object;
    instance-of v7, v6, Lbsh/ReturnControl;

    if-eqz v7, :cond_5

    .line 99
    move-object v7, v6

    check-cast v7, Lbsh/ReturnControl;

    iget v7, v7, Lbsh/ReturnControl;->kind:I

    sparse-switch v7, :sswitch_data_0

    goto :goto_4

    .line 101
    :sswitch_0
    move-object v7, v6

    .line 102
    .end local v15    # "returnControl":Ljava/lang/Object;
    .local v7, "returnControl":Ljava/lang/Object;
    const/4 v0, 0x1

    .line 103
    move-object v15, v7

    goto :goto_4

    .line 105
    .end local v7    # "returnControl":Ljava/lang/Object;
    .restart local v15    # "returnControl":Ljava/lang/Object;
    :sswitch_1
    goto :goto_4

    .line 107
    :sswitch_2
    const/4 v0, 0x1

    .line 112
    .end local v6    # "ret":Ljava/lang/Object;
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 113
    goto :goto_6

    .line 115
    .end local v0    # "breakout":Z
    :cond_6
    move-object/from16 v7, v17

    const/4 v6, 0x0

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    goto :goto_5

    .end local v17    # "firstNode":Lbsh/SimpleNode;
    .local v7, "firstNode":Lbsh/SimpleNode;
    :catch_2
    move-exception v0

    move-object/from16 v17, v7

    .line 92
    .end local v7    # "firstNode":Lbsh/SimpleNode;
    .local v0, "e":Lbsh/UtilEvalError;
    .restart local v17    # "firstNode":Lbsh/SimpleNode;
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "for loop iterator variable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1, v2}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v6

    throw v6

    .line 80
    .end local v0    # "e":Lbsh/UtilEvalError;
    .end local v17    # "firstNode":Lbsh/SimpleNode;
    .restart local v7    # "firstNode":Lbsh/SimpleNode;
    :cond_7
    move-object/from16 v17, v7

    .line 116
    .end local v7    # "firstNode":Lbsh/SimpleNode;
    .restart local v17    # "firstNode":Lbsh/SimpleNode;
    :goto_6
    invoke-virtual {v2, v5}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    .line 117
    return-object v15

    .line 76
    .end local v14    # "iterator":Lbsh/BshIterator;
    .end local v15    # "returnControl":Ljava/lang/Object;
    .end local v17    # "firstNode":Lbsh/SimpleNode;
    .restart local v7    # "firstNode":Lbsh/SimpleNode;
    :cond_8
    move-object/from16 v17, v7

    .end local v7    # "firstNode":Lbsh/SimpleNode;
    .restart local v17    # "firstNode":Lbsh/SimpleNode;
    new-instance v0, Lbsh/EvalError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t iterate over type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v1, v2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    .line 72
    .end local v13    # "cm":Lbsh/CollectionManager;
    .end local v17    # "firstNode":Lbsh/SimpleNode;
    .restart local v7    # "firstNode":Lbsh/SimpleNode;
    :cond_9
    new-instance v0, Lbsh/EvalError;

    const-string v6, "The collection, array, map, iterator, or enumeration portion of a for statement cannot be null."

    invoke-direct {v0, v6, v1, v2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_2
        0x13 -> :sswitch_1
        0x2e -> :sswitch_0
    .end sparse-switch
.end method
