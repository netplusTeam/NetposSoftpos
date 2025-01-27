.class public Lbsh/ClassGeneratorImpl;
.super Lbsh/ClassGenerator;
.source "ClassGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/ClassGeneratorImpl$ClassNodeFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lbsh/ClassGenerator;-><init>()V

    return-void
.end method

.method public static generateClassImpl(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .locals 21
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "modifiers"    # Lbsh/Modifiers;
    .param p2, "interfaces"    # [Ljava/lang/Class;
    .param p3, "superClass"    # Ljava/lang/Class;
    .param p4, "block"    # Lbsh/BSHBlock;
    .param p5, "isInterface"    # Z
    .param p6, "callstack"    # Lbsh/CallStack;
    .param p7, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    .line 93
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lbsh/Capabilities;->setAccessibility(Z)V
    :try_end_0
    .catch Lbsh/Capabilities$Unavailable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    nop

    .line 101
    invoke-virtual/range {p6 .. p6}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v4

    .line 102
    .local v4, "enclosingNameSpace":Lbsh/NameSpace;
    invoke-virtual {v4}, Lbsh/NameSpace;->getPackage()Ljava/lang/String;

    move-result-object v14

    .line 103
    .local v14, "packageName":Ljava/lang/String;
    iget-boolean v5, v4, Lbsh/NameSpace;->isClass:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {v4}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v15, p0

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v15, p0

    move-object v5, v15

    :goto_0
    move-object v13, v5

    .line 105
    .local v13, "className":Ljava/lang/String;
    if-nez v14, :cond_1

    move-object v5, v13

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v12, v5

    .line 107
    .local v12, "fqClassName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_bshStatic"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, "bshStaticFieldName":Ljava/lang/String;
    invoke-virtual/range {p7 .. p7}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v10

    .line 111
    .local v10, "bcm":Lbsh/BshClassManager;
    invoke-virtual {v10, v12}, Lbsh/BshClassManager;->definingClass(Ljava/lang/String;)V

    .line 114
    new-instance v5, Lbsh/NameSpace;

    invoke-direct {v5, v4, v13}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    move-object v9, v5

    .line 116
    .local v9, "classStaticNameSpace":Lbsh/NameSpace;
    iput-boolean v0, v9, Lbsh/NameSpace;->isClass:Z

    .line 118
    invoke-virtual {v2, v9}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    .line 122
    sget-object v5, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSCLASSES:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    invoke-virtual {v1, v2, v3, v0, v5}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    .line 127
    nop

    .line 128
    invoke-static {v1, v2, v3, v14}, Lbsh/ClassGeneratorImpl;->getDeclaredVariables(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/Variable;

    move-result-object v16

    .line 129
    .local v16, "variables":[Lbsh/Variable;
    nop

    .line 130
    invoke-static {v1, v2, v3, v14}, Lbsh/ClassGeneratorImpl;->getDeclaredMethods(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/DelayedEvalBshMethod;

    move-result-object v17

    .line 134
    .local v17, "methods":[Lbsh/DelayedEvalBshMethod;
    new-instance v18, Lbsh/ClassGeneratorUtil;

    move-object/from16 v5, v18

    move-object/from16 v6, p1

    move-object v7, v13

    move-object v8, v14

    move-object v0, v9

    .end local v9    # "classStaticNameSpace":Lbsh/NameSpace;
    .local v0, "classStaticNameSpace":Lbsh/NameSpace;
    move-object/from16 v9, p3

    move-object/from16 v19, v14

    move-object v14, v10

    .end local v10    # "bcm":Lbsh/BshClassManager;
    .local v14, "bcm":Lbsh/BshClassManager;
    .local v19, "packageName":Ljava/lang/String;
    move-object/from16 v10, p2

    move-object v15, v11

    .end local v11    # "bshStaticFieldName":Ljava/lang/String;
    .local v15, "bshStaticFieldName":Ljava/lang/String;
    move-object/from16 v11, v16

    move-object/from16 v20, v15

    move-object v15, v12

    .end local v12    # "fqClassName":Ljava/lang/String;
    .local v15, "fqClassName":Ljava/lang/String;
    .local v20, "bshStaticFieldName":Ljava/lang/String;
    move-object/from16 v12, v17

    move-object v2, v13

    .end local v13    # "className":Ljava/lang/String;
    .local v2, "className":Ljava/lang/String;
    move/from16 v13, p5

    invoke-direct/range {v5 .. v13}, Lbsh/ClassGeneratorUtil;-><init>(Lbsh/Modifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Lbsh/Variable;[Lbsh/DelayedEvalBshMethod;Z)V

    .line 139
    .local v5, "classGenerator":Lbsh/ClassGeneratorUtil;
    invoke-virtual {v14, v15}, Lbsh/BshClassManager;->getAssociatedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 143
    .local v6, "clas":Ljava/lang/Class;
    if-nez v6, :cond_3

    .line 147
    nop

    .line 148
    invoke-static {}, Lbsh/Interpreter;->getSaveClasses()Z

    move-result v7

    .line 147
    invoke-virtual {v5, v7}, Lbsh/ClassGeneratorUtil;->generateClass(Z)[B

    move-result-object v7

    .line 150
    .local v7, "code":[B
    invoke-static {}, Lbsh/Interpreter;->getSaveClasses()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 151
    invoke-static {v2, v7}, Lbsh/ClassGeneratorImpl;->saveClasses(Ljava/lang/String;[B)V

    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {v14, v15, v7}, Lbsh/BshClassManager;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v6

    .line 158
    .end local v7    # "code":[B
    :cond_3
    :goto_2
    invoke-static {}, Lbsh/Interpreter;->getSaveClasses()Z

    move-result v7

    if-nez v7, :cond_5

    .line 164
    invoke-virtual {v5, v0, v1}, Lbsh/ClassGeneratorUtil;->initStaticNameSpace(Lbsh/NameSpace;Lbsh/BSHBlock;)V

    .line 168
    const/16 v7, 0x24

    const/16 v8, 0x2e

    invoke-virtual {v15, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v6}, Lbsh/NameSpace;->setClassStatic(Ljava/lang/Class;)V

    .line 175
    sget-object v7, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSSTATIC:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    move-object v8, v2

    const/4 v9, 0x1

    move-object/from16 v2, p6

    .end local v2    # "className":Ljava/lang/String;
    .local v8, "className":Ljava/lang/String;
    invoke-virtual {v1, v2, v3, v9, v7}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-nez v7, :cond_4

    .line 180
    move-object/from16 v7, v20

    .end local v20    # "bshStaticFieldName":Ljava/lang/String;
    .local v7, "bshStaticFieldName":Ljava/lang/String;
    invoke-static {v6, v7, v0, v3}, Lbsh/ClassGeneratorImpl;->installStaticBlock(Ljava/lang/Class;Ljava/lang/String;Lbsh/NameSpace;Lbsh/Interpreter;)V

    goto :goto_3

    .line 179
    .end local v7    # "bshStaticFieldName":Ljava/lang/String;
    .restart local v20    # "bshStaticFieldName":Ljava/lang/String;
    :cond_4
    move-object/from16 v7, v20

    .end local v20    # "bshStaticFieldName":Ljava/lang/String;
    .restart local v7    # "bshStaticFieldName":Ljava/lang/String;
    goto :goto_3

    .line 158
    .end local v7    # "bshStaticFieldName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v20    # "bshStaticFieldName":Ljava/lang/String;
    :cond_5
    move-object v8, v2

    move-object/from16 v7, v20

    move-object/from16 v2, p6

    .line 184
    .end local v2    # "className":Ljava/lang/String;
    .end local v20    # "bshStaticFieldName":Ljava/lang/String;
    .restart local v7    # "bshStaticFieldName":Ljava/lang/String;
    .restart local v8    # "className":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p6 .. p6}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    .line 186
    invoke-virtual {v14, v15}, Lbsh/BshClassManager;->doneDefiningClass(Ljava/lang/String;)V

    .line 187
    return-object v6

    .line 94
    .end local v0    # "classStaticNameSpace":Lbsh/NameSpace;
    .end local v4    # "enclosingNameSpace":Lbsh/NameSpace;
    .end local v5    # "classGenerator":Lbsh/ClassGeneratorUtil;
    .end local v6    # "clas":Ljava/lang/Class;
    .end local v7    # "bshStaticFieldName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v14    # "bcm":Lbsh/BshClassManager;
    .end local v15    # "fqClassName":Ljava/lang/String;
    .end local v16    # "variables":[Lbsh/Variable;
    .end local v17    # "methods":[Lbsh/DelayedEvalBshMethod;
    .end local v19    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 96
    .local v0, "e":Lbsh/Capabilities$Unavailable;
    new-instance v4, Lbsh/EvalError;

    const-string v5, "Defining classes currently requires reflective Accessibility."

    invoke-direct {v4, v5, v1, v2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v4
.end method

.method static getDeclaredMethods(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/DelayedEvalBshMethod;
    .locals 26
    .param p0, "body"    # Lbsh/BSHBlock;
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "defaultPackage"    # Ljava/lang/String;

    .line 259
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 260
    .local v15, "methods":Ljava/util/List;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "child":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 262
    move-object/from16 v10, p0

    invoke-virtual {v10, v11}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lbsh/SimpleNode;

    .line 263
    .local v9, "node":Lbsh/SimpleNode;
    instance-of v0, v9, Lbsh/BSHMethodDeclaration;

    if-eqz v0, :cond_0

    .line 265
    move-object v8, v9

    check-cast v8, Lbsh/BSHMethodDeclaration;

    .line 266
    .local v8, "md":Lbsh/BSHMethodDeclaration;
    invoke-virtual {v8}, Lbsh/BSHMethodDeclaration;->insureNodesParsed()V

    .line 267
    iget-object v7, v8, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    .line 268
    .local v7, "modifiers":Lbsh/Modifiers;
    iget-object v6, v8, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    .line 269
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v8, v12, v13, v14}, Lbsh/BSHMethodDeclaration;->getReturnTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 271
    .local v16, "returnType":Ljava/lang/String;
    invoke-virtual {v8}, Lbsh/BSHMethodDeclaration;->getReturnTypeNode()Lbsh/BSHReturnType;

    move-result-object v17

    .line 272
    .local v17, "returnTypeNode":Lbsh/BSHReturnType;
    iget-object v5, v8, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    .line 273
    .local v5, "paramTypesNode":Lbsh/BSHFormalParameters;
    invoke-virtual {v5, v12, v13, v14}, Lbsh/BSHFormalParameters;->getTypeDescriptors(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 276
    .local v18, "paramTypes":[Ljava/lang/String;
    new-instance v19, Lbsh/DelayedEvalBshMethod;

    iget-object v0, v8, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    .line 279
    invoke-virtual {v0}, Lbsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v4

    iget-object v3, v8, Lbsh/BSHMethodDeclaration;->blockNode:Lbsh/BSHBlock;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object v1, v6

    move-object/from16 v2, v16

    move-object/from16 v21, v3

    move-object/from16 v3, v17

    move-object/from16 v22, v5

    .end local v5    # "paramTypesNode":Lbsh/BSHFormalParameters;
    .local v22, "paramTypesNode":Lbsh/BSHFormalParameters;
    move-object/from16 v5, v18

    move-object/from16 v23, v6

    .end local v6    # "name":Ljava/lang/String;
    .local v23, "name":Ljava/lang/String;
    move-object/from16 v6, v22

    move-object/from16 v24, v7

    .end local v7    # "modifiers":Lbsh/Modifiers;
    .local v24, "modifiers":Lbsh/Modifiers;
    move-object/from16 v7, v21

    move-object/from16 v21, v8

    .end local v8    # "md":Lbsh/BSHMethodDeclaration;
    .local v21, "md":Lbsh/BSHMethodDeclaration;
    move-object/from16 v8, v20

    move-object/from16 v20, v9

    .end local v9    # "node":Lbsh/SimpleNode;
    .local v20, "node":Lbsh/SimpleNode;
    move-object/from16 v9, v24

    move-object/from16 v10, p1

    move/from16 v25, v11

    .end local v11    # "child":I
    .local v25, "child":I
    move-object/from16 v11, p2

    invoke-direct/range {v0 .. v11}, Lbsh/DelayedEvalBshMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Lbsh/BSHReturnType;[Ljava/lang/String;[Ljava/lang/String;Lbsh/BSHFormalParameters;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;Lbsh/CallStack;Lbsh/Interpreter;)V

    .line 285
    .local v0, "bm":Lbsh/DelayedEvalBshMethod;
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    .end local v0    # "bm":Lbsh/DelayedEvalBshMethod;
    .end local v16    # "returnType":Ljava/lang/String;
    .end local v17    # "returnTypeNode":Lbsh/BSHReturnType;
    .end local v18    # "paramTypes":[Ljava/lang/String;
    .end local v20    # "node":Lbsh/SimpleNode;
    .end local v21    # "md":Lbsh/BSHMethodDeclaration;
    .end local v22    # "paramTypesNode":Lbsh/BSHFormalParameters;
    .end local v23    # "name":Ljava/lang/String;
    .end local v24    # "modifiers":Lbsh/Modifiers;
    .end local v25    # "child":I
    .restart local v9    # "node":Lbsh/SimpleNode;
    .restart local v11    # "child":I
    :cond_0
    move-object/from16 v20, v9

    move/from16 v25, v11

    .line 260
    .end local v9    # "node":Lbsh/SimpleNode;
    .end local v11    # "child":I
    .restart local v25    # "child":I
    :goto_1
    add-int/lit8 v11, v25, 0x1

    .end local v25    # "child":I
    .restart local v11    # "child":I
    goto :goto_0

    .line 289
    .end local v11    # "child":I
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lbsh/DelayedEvalBshMethod;

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsh/DelayedEvalBshMethod;

    check-cast v0, [Lbsh/DelayedEvalBshMethod;

    return-object v0
.end method

.method static getDeclaredVariables(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/Variable;
    .locals 11
    .param p0, "body"    # Lbsh/BSHBlock;
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "defaultPackage"    # Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "vars":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "child":I
    :goto_0
    invoke-virtual {p0}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 226
    invoke-virtual {p0, v1}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/SimpleNode;

    .line 227
    .local v2, "node":Lbsh/SimpleNode;
    instance-of v3, v2, Lbsh/BSHTypedVariableDeclaration;

    if-eqz v3, :cond_0

    .line 229
    move-object v3, v2

    check-cast v3, Lbsh/BSHTypedVariableDeclaration;

    .line 231
    .local v3, "tvd":Lbsh/BSHTypedVariableDeclaration;
    iget-object v4, v3, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    .line 233
    .local v4, "modifiers":Lbsh/Modifiers;
    invoke-virtual {v3, p1, p2, p3}, Lbsh/BSHTypedVariableDeclaration;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v3}, Lbsh/BSHTypedVariableDeclaration;->getDeclarators()[Lbsh/BSHVariableDeclarator;

    move-result-object v6

    .line 237
    .local v6, "vardec":[Lbsh/BSHVariableDeclarator;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_0

    .line 239
    aget-object v8, v6, v7

    iget-object v8, v8, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    .line 241
    .local v8, "name":Ljava/lang/String;
    :try_start_0
    new-instance v9, Lbsh/Variable;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v5, v10, v4}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)V

    .line 243
    .local v9, "var":Lbsh/Variable;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    nop

    .end local v9    # "var":Lbsh/Variable;
    goto :goto_2

    .line 244
    :catch_0
    move-exception v9

    .line 237
    .end local v8    # "name":Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 224
    .end local v2    # "node":Lbsh/SimpleNode;
    .end local v3    # "tvd":Lbsh/BSHTypedVariableDeclaration;
    .end local v4    # "modifiers":Lbsh/Modifiers;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "vardec":[Lbsh/BSHVariableDeclarator;
    .end local v7    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "child":I
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lbsh/Variable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lbsh/Variable;

    check-cast v1, [Lbsh/Variable;

    return-object v1
.end method

.method private static installStaticBlock(Ljava/lang/Class;Ljava/lang/String;Lbsh/NameSpace;Lbsh/Interpreter;)V
    .locals 4
    .param p0, "genClass"    # Ljava/lang/Class;
    .param p1, "bshStaticFieldName"    # Ljava/lang/String;
    .param p2, "classStaticNameSpace"    # Lbsh/NameSpace;
    .param p3, "interpreter"    # Lbsh/Interpreter;

    .line 196
    :try_start_0
    invoke-static {p0, p1}, Lbsh/Reflect;->getLHSStaticField(Ljava/lang/Class;Ljava/lang/String;)Lbsh/LHS;

    move-result-object v0

    .line 197
    .local v0, "lhs":Lbsh/LHS;
    nop

    .line 198
    invoke-virtual {p2, p3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v1

    const/4 v2, 0x0

    .line 197
    invoke-virtual {v0, v1, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    nop

    .line 202
    .end local v0    # "lhs":Lbsh/LHS;
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in class gen setup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static invokeSuperclassMethodImpl(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0, "bcm"    # Lbsh/BshClassManager;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/ReflectError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_bshSuper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "superName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 361
    .local v1, "clas":Ljava/lang/Class;
    nop

    .line 362
    invoke-static {p3}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 361
    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lbsh/Reflect;->resolveJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 363
    .local v2, "superMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 364
    invoke-static {v2, p1, p3}, Lbsh/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 369
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 370
    .local v3, "superClass":Ljava/lang/Class;
    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v4 .. v9}, Lbsh/Reflect;->resolveExpectedJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 373
    invoke-static {v2, p1, p3}, Lbsh/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method private static saveClasses(Ljava/lang/String;[B)V
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "code"    # [B

    .line 206
    invoke-static {}, Lbsh/Interpreter;->getSaveClassesDir()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "dir":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 212
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public generateClass(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # Lbsh/Modifiers;
    .param p3, "interfaces"    # [Ljava/lang/Class;
    .param p4, "superClass"    # Ljava/lang/Class;
    .param p5, "block"    # Lbsh/BSHBlock;
    .param p6, "isInterface"    # Z
    .param p7, "callstack"    # Lbsh/CallStack;
    .param p8, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 50
    invoke-static/range {p1 .. p8}, Lbsh/ClassGeneratorImpl;->generateClassImpl(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public invokeSuperclassMethod(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "bcm"    # Lbsh/BshClassManager;
    .param p2, "instance"    # Ljava/lang/Object;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/ReflectError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 60
    invoke-static {p1, p2, p3, p4}, Lbsh/ClassGeneratorImpl;->invokeSuperclassMethodImpl(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setInstanceNameSpaceParent(Ljava/lang/Object;Ljava/lang/String;Lbsh/NameSpace;)V
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "parent"    # Lbsh/NameSpace;

    .line 72
    nop

    .line 73
    invoke-static {p1, p2}, Lbsh/ClassGeneratorUtil;->getClassInstanceThis(Ljava/lang/Object;Ljava/lang/String;)Lbsh/This;

    move-result-object v0

    .line 74
    .local v0, "ithis":Lbsh/This;
    invoke-virtual {v0}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v1

    invoke-virtual {v1, p3}, Lbsh/NameSpace;->setParent(Lbsh/NameSpace;)V

    .line 75
    return-void
.end method
