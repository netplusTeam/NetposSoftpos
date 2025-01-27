.class Lbsh/BSHTryStatement;
.super Lbsh/SimpleNode;
.source "BSHTryStatement.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 37
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 22
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 43
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lbsh/BSHTryStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lbsh/BSHBlock;

    .line 45
    .local v4, "tryBlock":Lbsh/BSHBlock;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v5, v0

    .line 46
    .local v5, "catchParams":Ljava/util/Vector;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v6, v0

    .line 48
    .local v6, "catchBlocks":Ljava/util/Vector;
    invoke-virtual/range {p0 .. p0}, Lbsh/BSHTryStatement;->jjtGetNumChildren()I

    move-result v7

    .line 49
    .local v7, "nchild":I
    const/4 v0, 0x0

    .line 50
    .local v0, "node":Lbsh/Node;
    const/4 v8, 0x1

    .line 51
    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    invoke-virtual {v1, v8}, Lbsh/BSHTryStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v8

    move-object v0, v8

    instance-of v8, v8, Lbsh/BSHFormalParameter;

    if-eqz v8, :cond_0

    .line 53
    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 54
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v1, v9}, Lbsh/BSHTryStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 55
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :cond_0
    move-object v8, v0

    goto :goto_1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_1
    move v9, v8

    move-object v8, v0

    .line 58
    .end local v0    # "node":Lbsh/Node;
    .local v8, "node":Lbsh/Node;
    .restart local v9    # "i":I
    :goto_1
    const/4 v0, 0x0

    .line 59
    .local v0, "finallyBlock":Lbsh/BSHBlock;
    if-eqz v8, :cond_2

    .line 60
    move-object v0, v8

    check-cast v0, Lbsh/BSHBlock;

    move-object v10, v0

    goto :goto_2

    .line 59
    :cond_2
    move-object v10, v0

    .line 64
    .end local v0    # "finallyBlock":Lbsh/BSHBlock;
    .local v10, "finallyBlock":Lbsh/BSHBlock;
    :goto_2
    const/4 v11, 0x0

    .line 65
    .local v11, "target":Lbsh/TargetError;
    const/4 v12, 0x0

    .line 66
    .local v12, "thrown":Ljava/lang/Throwable;
    const/4 v13, 0x0

    .line 78
    .local v13, "ret":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lbsh/CallStack;->depth()I

    move-result v14

    .line 80
    .local v14, "callstackDepth":I
    :try_start_0
    invoke-virtual {v4, v2, v3}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    .line 87
    move-object/from16 v17, v4

    goto :goto_4

    .line 82
    :catch_0
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 83
    .local v0, "e":Lbsh/TargetError;
    move-object v11, v0

    .line 84
    const-string v15, "Bsh Stack: "

    .line 85
    .local v15, "stackInfo":Ljava/lang/String;
    :goto_3
    move-object/from16 v16, v0

    .end local v0    # "e":Lbsh/TargetError;
    .local v16, "e":Lbsh/TargetError;
    invoke-virtual/range {p1 .. p1}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v14, :cond_3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v17, v4

    .end local v4    # "tryBlock":Lbsh/BSHBlock;
    .local v17, "tryBlock":Lbsh/BSHBlock;
    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    goto :goto_3

    .line 85
    .end local v17    # "tryBlock":Lbsh/BSHBlock;
    .restart local v4    # "tryBlock":Lbsh/BSHBlock;
    :cond_3
    move-object/from16 v17, v4

    .line 90
    .end local v4    # "tryBlock":Lbsh/BSHBlock;
    .end local v15    # "stackInfo":Ljava/lang/String;
    .end local v16    # "e":Lbsh/TargetError;
    .restart local v17    # "tryBlock":Lbsh/BSHBlock;
    :goto_4
    if-eqz v11, :cond_4

    .line 91
    invoke-virtual {v11}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v12

    .line 95
    :cond_4
    if-eqz v12, :cond_a

    .line 97
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 98
    .local v4, "n":I
    const/4 v0, 0x0

    move v9, v0

    :goto_5
    if-ge v9, v4, :cond_9

    .line 101
    nop

    .line 102
    invoke-virtual {v5, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lbsh/BSHFormalParameter;

    .line 108
    .local v15, "fp":Lbsh/BSHFormalParameter;
    invoke-virtual {v15, v2, v3}, Lbsh/BSHFormalParameter;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    .line 110
    iget-object v0, v15, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    if-nez v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v0

    if-nez v0, :cond_5

    move/from16 v16, v4

    goto :goto_6

    .line 111
    :cond_5
    new-instance v0, Lbsh/EvalError;

    move/from16 v16, v4

    .end local v4    # "n":I
    .local v16, "n":I
    const-string v4, "(Strict Java) Untyped catch block"

    invoke-direct {v0, v4, v1, v2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    .line 110
    .end local v16    # "n":I
    .restart local v4    # "n":I
    :cond_6
    move/from16 v16, v4

    .line 115
    .end local v4    # "n":I
    .restart local v16    # "n":I
    :goto_6
    iget-object v0, v15, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 117
    :try_start_1
    iget-object v0, v15, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-static {v12, v0, v4}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v0

    .line 128
    goto :goto_7

    .line 119
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Lbsh/UtilEvalError;
    nop

    .line 98
    .end local v0    # "e":Lbsh/UtilEvalError;
    .end local v15    # "fp":Lbsh/BSHFormalParameter;
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    goto :goto_5

    .line 131
    .restart local v15    # "fp":Lbsh/BSHFormalParameter;
    :cond_7
    :goto_7
    invoke-virtual {v6, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;

    move-object v4, v0

    check-cast v4, Lbsh/BSHBlock;

    .line 137
    .local v4, "cb":Lbsh/BSHBlock;
    invoke-virtual/range {p1 .. p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v1

    .line 138
    .local v1, "enclosingNameSpace":Lbsh/NameSpace;
    new-instance v0, Lbsh/BlockNameSpace;

    invoke-direct {v0, v1}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    move-object/from16 v18, v0

    .line 142
    .local v18, "cbNameSpace":Lbsh/BlockNameSpace;
    :try_start_2
    iget-object v0, v15, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_8

    move-object/from16 v19, v5

    .end local v5    # "catchParams":Ljava/util/Vector;
    .local v19, "catchParams":Ljava/util/Vector;
    :try_start_3
    sget-object v5, Lbsh/BSHFormalParameter;->UNTYPED:Ljava/lang/Class;
    :try_end_3
    .catch Lbsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_7

    if-ne v0, v5, :cond_8

    .line 144
    :try_start_4
    iget-object v0, v15, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;
    :try_end_4
    .catch Lbsh/UtilEvalError; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v5, v18

    .end local v18    # "cbNameSpace":Lbsh/BlockNameSpace;
    .local v5, "cbNameSpace":Lbsh/BlockNameSpace;
    :try_start_5
    invoke-virtual {v5, v0, v12}, Lbsh/BlockNameSpace;->setBlockVariable(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lbsh/UtilEvalError; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v20, v6

    move/from16 v21, v7

    goto :goto_8

    .line 152
    :catch_2
    move-exception v0

    move-object/from16 v20, v6

    move/from16 v21, v7

    goto :goto_9

    .end local v5    # "cbNameSpace":Lbsh/BlockNameSpace;
    .restart local v18    # "cbNameSpace":Lbsh/BlockNameSpace;
    :catch_3
    move-exception v0

    move-object/from16 v5, v18

    move-object/from16 v20, v6

    move/from16 v21, v7

    .end local v18    # "cbNameSpace":Lbsh/BlockNameSpace;
    .restart local v5    # "cbNameSpace":Lbsh/BlockNameSpace;
    goto :goto_9

    .line 148
    .end local v5    # "cbNameSpace":Lbsh/BlockNameSpace;
    .restart local v18    # "cbNameSpace":Lbsh/BlockNameSpace;
    :cond_8
    move-object/from16 v5, v18

    .end local v18    # "cbNameSpace":Lbsh/BlockNameSpace;
    .restart local v5    # "cbNameSpace":Lbsh/BlockNameSpace;
    :try_start_6
    new-instance v0, Lbsh/Modifiers;

    invoke-direct {v0}, Lbsh/Modifiers;-><init>()V

    .line 149
    .local v0, "modifiers":Lbsh/Modifiers;
    move-object/from16 v18, v0

    .end local v0    # "modifiers":Lbsh/Modifiers;
    .local v18, "modifiers":Lbsh/Modifiers;
    iget-object v0, v15, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;
    :try_end_6
    .catch Lbsh/UtilEvalError; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v20, v6

    .end local v6    # "catchBlocks":Ljava/util/Vector;
    .local v20, "catchBlocks":Ljava/util/Vector;
    :try_start_7
    iget-object v6, v15, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;
    :try_end_7
    .catch Lbsh/UtilEvalError; {:try_start_7 .. :try_end_7} :catch_5

    move/from16 v21, v7

    .end local v7    # "nchild":I
    .local v21, "nchild":I
    :try_start_8
    new-instance v7, Lbsh/Modifiers;

    invoke-direct {v7}, Lbsh/Modifiers;-><init>()V

    invoke-virtual {v5, v0, v6, v12, v7}, Lbsh/BlockNameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_8
    .catch Lbsh/UtilEvalError; {:try_start_8 .. :try_end_8} :catch_4

    .line 155
    .end local v18    # "modifiers":Lbsh/Modifiers;
    :goto_8
    nop

    .line 158
    invoke-virtual {v2, v5}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    .line 160
    :try_start_9
    invoke-virtual {v4, v2, v3}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v13, v0

    .line 163
    invoke-virtual {v2, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    .line 164
    nop

    .line 166
    const/4 v11, 0x0

    .line 167
    goto :goto_a

    .line 163
    :catchall_0
    move-exception v0

    move-object v6, v0

    invoke-virtual {v2, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    throw v6

    .line 152
    :catch_4
    move-exception v0

    goto :goto_9

    .end local v21    # "nchild":I
    .restart local v7    # "nchild":I
    :catch_5
    move-exception v0

    move/from16 v21, v7

    .end local v7    # "nchild":I
    .restart local v21    # "nchild":I
    goto :goto_9

    .end local v20    # "catchBlocks":Ljava/util/Vector;
    .end local v21    # "nchild":I
    .restart local v6    # "catchBlocks":Ljava/util/Vector;
    .restart local v7    # "nchild":I
    :catch_6
    move-exception v0

    move-object/from16 v20, v6

    move/from16 v21, v7

    .end local v6    # "catchBlocks":Ljava/util/Vector;
    .end local v7    # "nchild":I
    .restart local v20    # "catchBlocks":Ljava/util/Vector;
    .restart local v21    # "nchild":I
    goto :goto_9

    .end local v5    # "cbNameSpace":Lbsh/BlockNameSpace;
    .end local v20    # "catchBlocks":Ljava/util/Vector;
    .end local v21    # "nchild":I
    .restart local v6    # "catchBlocks":Ljava/util/Vector;
    .restart local v7    # "nchild":I
    .local v18, "cbNameSpace":Lbsh/BlockNameSpace;
    :catch_7
    move-exception v0

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v5, v18

    .end local v6    # "catchBlocks":Ljava/util/Vector;
    .end local v7    # "nchild":I
    .end local v18    # "cbNameSpace":Lbsh/BlockNameSpace;
    .restart local v5    # "cbNameSpace":Lbsh/BlockNameSpace;
    .restart local v20    # "catchBlocks":Ljava/util/Vector;
    .restart local v21    # "nchild":I
    goto :goto_9

    .end local v19    # "catchParams":Ljava/util/Vector;
    .end local v20    # "catchBlocks":Ljava/util/Vector;
    .end local v21    # "nchild":I
    .local v5, "catchParams":Ljava/util/Vector;
    .restart local v6    # "catchBlocks":Ljava/util/Vector;
    .restart local v7    # "nchild":I
    .restart local v18    # "cbNameSpace":Lbsh/BlockNameSpace;
    :catch_8
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v5, v18

    .line 153
    .end local v6    # "catchBlocks":Ljava/util/Vector;
    .end local v7    # "nchild":I
    .end local v18    # "cbNameSpace":Lbsh/BlockNameSpace;
    .local v0, "e":Lbsh/UtilEvalError;
    .local v5, "cbNameSpace":Lbsh/BlockNameSpace;
    .restart local v19    # "catchParams":Ljava/util/Vector;
    .restart local v20    # "catchBlocks":Ljava/util/Vector;
    .restart local v21    # "nchild":I
    :goto_9
    new-instance v6, Lbsh/InterpreterError;

    const-string v7, "Unable to set var in catch block namespace."

    invoke-direct {v6, v7}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 98
    .end local v0    # "e":Lbsh/UtilEvalError;
    .end local v1    # "enclosingNameSpace":Lbsh/NameSpace;
    .end local v15    # "fp":Lbsh/BSHFormalParameter;
    .end local v16    # "n":I
    .end local v19    # "catchParams":Ljava/util/Vector;
    .end local v20    # "catchBlocks":Ljava/util/Vector;
    .end local v21    # "nchild":I
    .local v4, "n":I
    .local v5, "catchParams":Ljava/util/Vector;
    .restart local v6    # "catchBlocks":Ljava/util/Vector;
    .restart local v7    # "nchild":I
    :cond_9
    move/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    .end local v4    # "n":I
    .end local v5    # "catchParams":Ljava/util/Vector;
    .end local v6    # "catchBlocks":Ljava/util/Vector;
    .end local v7    # "nchild":I
    .restart local v16    # "n":I
    .restart local v19    # "catchParams":Ljava/util/Vector;
    .restart local v20    # "catchBlocks":Ljava/util/Vector;
    .restart local v21    # "nchild":I
    goto :goto_a

    .line 95
    .end local v16    # "n":I
    .end local v19    # "catchParams":Ljava/util/Vector;
    .end local v20    # "catchBlocks":Ljava/util/Vector;
    .end local v21    # "nchild":I
    .restart local v5    # "catchParams":Ljava/util/Vector;
    .restart local v6    # "catchBlocks":Ljava/util/Vector;
    .restart local v7    # "nchild":I
    :cond_a
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    .line 172
    .end local v5    # "catchParams":Ljava/util/Vector;
    .end local v6    # "catchBlocks":Ljava/util/Vector;
    .end local v7    # "nchild":I
    .restart local v19    # "catchParams":Ljava/util/Vector;
    .restart local v20    # "catchBlocks":Ljava/util/Vector;
    .restart local v21    # "nchild":I
    :goto_a
    if-eqz v10, :cond_b

    .line 173
    invoke-virtual {v10, v2, v3}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v13

    .line 176
    :cond_b
    if-nez v11, :cond_d

    .line 179
    instance-of v0, v13, Lbsh/ReturnControl;

    if-eqz v0, :cond_c

    .line 180
    return-object v13

    .line 182
    :cond_c
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v0

    .line 177
    :cond_d
    throw v11
.end method
