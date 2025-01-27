.class public Lbsh/BshMethod;
.super Ljava/lang/Object;
.source "BshMethod.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cparamTypes:[Ljava/lang/Class;

.field private creturnType:Ljava/lang/Class;

.field declaringNameSpace:Lbsh/NameSpace;

.field private javaMethod:Ljava/lang/reflect/Method;

.field private javaObject:Ljava/lang/Object;

.field methodBody:Lbsh/BSHBlock;

.field modifiers:Lbsh/Modifiers;

.field private name:Ljava/lang/String;

.field private numArgs:I

.field private paramNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lbsh/BSHMethodDeclaration;Lbsh/NameSpace;Lbsh/Modifiers;)V
    .locals 8
    .param p1, "method"    # Lbsh/BSHMethodDeclaration;
    .param p2, "declaringNameSpace"    # Lbsh/NameSpace;
    .param p3, "modifiers"    # Lbsh/Modifiers;

    .line 83
    iget-object v1, p1, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    iget-object v2, p1, Lbsh/BSHMethodDeclaration;->returnType:Ljava/lang/Class;

    iget-object v0, p1, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    invoke-virtual {v0}, Lbsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    iget-object v4, v0, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    iget-object v5, p1, Lbsh/BSHMethodDeclaration;->blockNode:Lbsh/BSHBlock;

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lbsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V

    .line 86
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "returnType"    # Ljava/lang/Class;
    .param p3, "paramNames"    # [Ljava/lang/String;
    .param p4, "paramTypes"    # [Ljava/lang/Class;
    .param p5, "methodBody"    # Lbsh/BSHBlock;
    .param p6, "declaringNameSpace"    # Lbsh/NameSpace;
    .param p7, "modifiers"    # Lbsh/Modifiers;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lbsh/BshMethod;->creturnType:Ljava/lang/Class;

    .line 95
    iput-object p3, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    .line 96
    if-eqz p3, :cond_0

    .line 97
    array-length v0, p3

    iput v0, p0, Lbsh/BshMethod;->numArgs:I

    .line 98
    :cond_0
    iput-object p4, p0, Lbsh/BshMethod;->cparamTypes:[Ljava/lang/Class;

    .line 99
    iput-object p5, p0, Lbsh/BshMethod;->methodBody:Lbsh/BSHBlock;

    .line 100
    iput-object p6, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    .line 101
    iput-object p7, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    .line 102
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 8
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "object"    # Ljava/lang/Object;

    .line 110
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 111
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 110
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V

    .line 114
    iput-object p1, p0, Lbsh/BshMethod;->javaMethod:Ljava/lang/reflect/Method;

    .line 115
    iput-object p2, p0, Lbsh/BshMethod;->javaObject:Ljava/lang/Object;

    .line 116
    return-void
.end method

.method private invokeImpl([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    .locals 10
    .param p1, "argValues"    # [Ljava/lang/Object;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "callerInfo"    # Lbsh/SimpleNode;
    .param p5, "overrideNameSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lbsh/BshMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 262
    .local v0, "returnType":Ljava/lang/Class;
    invoke-virtual {p0}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 265
    .local v1, "paramTypes":[Ljava/lang/Class;
    if-nez p3, :cond_0

    .line 266
    new-instance v2, Lbsh/CallStack;

    iget-object v3, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    invoke-direct {v2, v3}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    move-object p3, v2

    .line 268
    :cond_0
    if-nez p1, :cond_1

    .line 269
    const/4 v2, 0x0

    new-array p1, v2, [Ljava/lang/Object;

    .line 272
    :cond_1
    array-length v2, p1

    iget v3, p0, Lbsh/BshMethod;->numArgs:I

    if-ne v2, v3, :cond_e

    .line 295
    const/4 v2, 0x1

    if-eqz p5, :cond_2

    .line 296
    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v3

    .local v3, "localNameSpace":Lbsh/NameSpace;
    goto :goto_0

    .line 299
    .end local v3    # "localNameSpace":Lbsh/NameSpace;
    :cond_2
    new-instance v3, Lbsh/NameSpace;

    iget-object v4, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    iget-object v5, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    .line 300
    .restart local v3    # "localNameSpace":Lbsh/NameSpace;
    iput-boolean v2, v3, Lbsh/NameSpace;->isMethod:Z

    .line 303
    :goto_0
    invoke-virtual {v3, p4}, Lbsh/NameSpace;->setNode(Lbsh/SimpleNode;)V

    .line 306
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v5, p0, Lbsh/BshMethod;->numArgs:I

    if-ge v4, v5, :cond_5

    .line 309
    aget-object v5, v1, v4

    if-eqz v5, :cond_3

    .line 312
    :try_start_0
    aget-object v5, p1, v4

    aget-object v6, v1, v4

    .line 314
    invoke-static {v5, v6, v2}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v4
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_1

    .line 322
    nop

    .line 324
    :try_start_1
    iget-object v5, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    aget-object v6, v1, v4

    aget-object v7, p1, v4

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    goto :goto_2

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, "e2":Lbsh/UtilEvalError;
    const-string v5, "Typed method parameter assignment"

    invoke-virtual {v2, v5, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v5

    throw v5

    .line 316
    .end local v2    # "e2":Lbsh/UtilEvalError;
    :catch_1
    move-exception v2

    .line 317
    .local v2, "e":Lbsh/UtilEvalError;
    new-instance v5, Lbsh/EvalError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid argument: `"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 321
    invoke-virtual {v2}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v5

    .line 335
    .end local v2    # "e":Lbsh/UtilEvalError;
    :cond_3
    aget-object v5, p1, v4

    sget-object v6, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v5, v6, :cond_4

    .line 342
    :try_start_2
    iget-object v5, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    aget-object v6, p1, v4

    .line 344
    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v7

    .line 342
    invoke-virtual {v3, v5, v6, v7}, Lbsh/NameSpace;->setLocalVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_2
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_2} :catch_2

    .line 347
    nop

    .line 306
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 345
    :catch_2
    move-exception v2

    .line 346
    .local v2, "e3":Lbsh/UtilEvalError;
    invoke-virtual {v2, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v5

    throw v5

    .line 336
    .end local v2    # "e3":Lbsh/UtilEvalError;
    :cond_4
    new-instance v2, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined variable or class name, parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2

    .line 352
    .end local v4    # "i":I
    :cond_5
    if-nez p5, :cond_6

    .line 353
    invoke-virtual {p3, v3}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    .line 356
    :cond_6
    iget-object v4, p0, Lbsh/BshMethod;->methodBody:Lbsh/BSHBlock;

    invoke-virtual {v4, p3, p2, v2}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v4

    .line 360
    .local v4, "ret":Ljava/lang/Object;
    invoke-virtual {p3}, Lbsh/CallStack;->copy()Lbsh/CallStack;

    move-result-object v5

    .line 363
    .local v5, "returnStack":Lbsh/CallStack;
    if-nez p5, :cond_7

    .line 364
    invoke-virtual {p3}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    .line 366
    :cond_7
    const/4 v6, 0x0

    .line 367
    .local v6, "retControl":Lbsh/ReturnControl;
    instance-of v7, v4, Lbsh/ReturnControl;

    if-eqz v7, :cond_a

    .line 369
    move-object v6, v4

    check-cast v6, Lbsh/ReturnControl;

    .line 372
    iget v7, v6, Lbsh/ReturnControl;->kind:I

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_9

    .line 373
    move-object v7, v4

    check-cast v7, Lbsh/ReturnControl;

    iget-object v4, v7, Lbsh/ReturnControl;->value:Ljava/lang/Object;

    .line 381
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v7, :cond_a

    sget-object v7, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v4, v7, :cond_8

    goto :goto_3

    .line 382
    :cond_8
    new-instance v2, Lbsh/EvalError;

    iget-object v7, v6, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    const-string v8, "Cannot return value from void method"

    invoke-direct {v2, v8, v7, v5}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2

    .line 376
    :cond_9
    new-instance v2, Lbsh/EvalError;

    iget-object v7, v6, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    const-string v8, "\'continue\' or \'break\' in method body"

    invoke-direct {v2, v8, v7, v5}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2

    .line 386
    :cond_a
    :goto_3
    if-eqz v0, :cond_d

    .line 389
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v7, :cond_b

    .line 390
    sget-object v2, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v2

    .line 394
    :cond_b
    nop

    .line 396
    :try_start_3
    invoke-static {v4, v0, v2}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Lbsh/UtilEvalError; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v2

    .line 407
    goto :goto_4

    .line 397
    :catch_3
    move-exception v2

    .line 401
    .local v2, "e":Lbsh/UtilEvalError;
    move-object v7, p4

    .line 402
    .local v7, "node":Lbsh/SimpleNode;
    if-eqz v6, :cond_c

    .line 403
    iget-object v7, v6, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    .line 404
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect type returned from method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 406
    invoke-virtual {v2}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 404
    invoke-virtual {v2, v8, v7, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v8

    throw v8

    .line 410
    .end local v2    # "e":Lbsh/UtilEvalError;
    .end local v7    # "node":Lbsh/SimpleNode;
    :cond_d
    :goto_4
    return-object v4

    .line 288
    .end local v3    # "localNameSpace":Lbsh/NameSpace;
    .end local v4    # "ret":Ljava/lang/Object;
    .end local v5    # "returnStack":Lbsh/CallStack;
    .end local v6    # "retControl":Lbsh/ReturnControl;
    :cond_e
    new-instance v2, Lbsh/EvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong number of arguments for local method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2
.end method


# virtual methods
.method public getModifiers()Lbsh/Modifiers;
    .locals 1

    .line 142
    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()[Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1

    .line 128
    iget-object v0, p0, Lbsh/BshMethod;->cparamTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1

    .line 140
    iget-object v0, p0, Lbsh/BshMethod;->creturnType:Ljava/lang/Class;

    return-object v0
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 6
    .param p1, "argValues"    # [Ljava/lang/Object;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 155
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .locals 6
    .param p1, "argValues"    # [Ljava/lang/Object;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "callerInfo"    # Lbsh/SimpleNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 180
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    .locals 7
    .param p1, "argValues"    # [Ljava/lang/Object;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "callstack"    # Lbsh/CallStack;
    .param p4, "callerInfo"    # Lbsh/SimpleNode;
    .param p5, "overrideNameSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 209
    if-eqz p1, :cond_1

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 211
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "HERE!"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lbsh/BshMethod;->javaMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 216
    :try_start_0
    iget-object v1, p0, Lbsh/BshMethod;->javaObject:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lbsh/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/ReflectError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 221
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 222
    .local v3, "e2":Ljava/lang/reflect/InvocationTargetException;
    new-instance v0, Lbsh/TargetError;

    const-string v2, "Exception invoking imported object method."

    const/4 v6, 0x1

    move-object v1, v0

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw v0

    .line 218
    .end local v3    # "e2":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Lbsh/ReflectError;
    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error invoking Java method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    .line 228
    .end local v0    # "e":Lbsh/ReflectError;
    :cond_2
    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_4

    const-string/jumbo v1, "synchronized"

    invoke-virtual {v0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    iget-object v0, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    iget-boolean v0, v0, Lbsh/NameSpace;->isClass:Z

    if-eqz v0, :cond_3

    .line 237
    :try_start_1
    iget-object v0, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0}, Lbsh/NameSpace;->getClassInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_2

    .line 241
    .local v0, "lock":Ljava/lang/Object;
    goto :goto_1

    .line 238
    .end local v0    # "lock":Ljava/lang/Object;
    :catch_2
    move-exception v0

    .line 239
    .local v0, "e":Lbsh/UtilEvalError;
    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "Can\'t get class instance for synchronized method."

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    .end local v0    # "e":Lbsh/UtilEvalError;
    :cond_3
    iget-object v0, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p2}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    .line 245
    .local v0, "lock":Ljava/lang/Object;
    :goto_1
    monitor-enter v0

    .line 247
    :try_start_2
    invoke-direct/range {p0 .. p5}, Lbsh/BshMethod;->invokeImpl([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 252
    .end local v0    # "lock":Ljava/lang/Object;
    :cond_4
    invoke-direct/range {p0 .. p5}, Lbsh/BshMethod;->invokeImpl([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scripted Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    .line 419
    invoke-virtual {p0}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
