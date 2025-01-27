.class public Lbsh/DelayedEvalBshMethod;
.super Lbsh/BshMethod;
.source "DelayedEvalBshMethod.java"


# instance fields
.field transient callstack:Lbsh/CallStack;

.field transient interpreter:Lbsh/Interpreter;

.field paramTypeDescriptors:[Ljava/lang/String;

.field paramTypesNode:Lbsh/BSHFormalParameters;

.field returnTypeDescriptor:Ljava/lang/String;

.field returnTypeNode:Lbsh/BSHReturnType;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lbsh/BSHReturnType;[Ljava/lang/String;[Ljava/lang/String;Lbsh/BSHFormalParameters;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;Lbsh/CallStack;Lbsh/Interpreter;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "returnTypeDescriptor"    # Ljava/lang/String;
    .param p3, "returnTypeNode"    # Lbsh/BSHReturnType;
    .param p4, "paramNames"    # [Ljava/lang/String;
    .param p5, "paramTypeDescriptors"    # [Ljava/lang/String;
    .param p6, "paramTypesNode"    # Lbsh/BSHFormalParameters;
    .param p7, "methodBody"    # Lbsh/BSHBlock;
    .param p8, "declaringNameSpace"    # Lbsh/NameSpace;
    .param p9, "modifiers"    # Lbsh/Modifiers;
    .param p10, "callstack"    # Lbsh/CallStack;
    .param p11, "interpreter"    # Lbsh/Interpreter;

    .line 63
    move-object v8, p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lbsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V

    .line 66
    move-object v0, p2

    iput-object v0, v8, Lbsh/DelayedEvalBshMethod;->returnTypeDescriptor:Ljava/lang/String;

    .line 67
    move-object v1, p3

    iput-object v1, v8, Lbsh/DelayedEvalBshMethod;->returnTypeNode:Lbsh/BSHReturnType;

    .line 68
    move-object v2, p5

    iput-object v2, v8, Lbsh/DelayedEvalBshMethod;->paramTypeDescriptors:[Ljava/lang/String;

    .line 69
    move-object v3, p6

    iput-object v3, v8, Lbsh/DelayedEvalBshMethod;->paramTypesNode:Lbsh/BSHFormalParameters;

    .line 70
    move-object/from16 v4, p10

    iput-object v4, v8, Lbsh/DelayedEvalBshMethod;->callstack:Lbsh/CallStack;

    .line 71
    move-object/from16 v5, p11

    iput-object v5, v8, Lbsh/DelayedEvalBshMethod;->interpreter:Lbsh/Interpreter;

    .line 72
    return-void
.end method


# virtual methods
.method public getParamTypeDescriptors()[Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->paramTypeDescriptors:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 4

    .line 95
    :try_start_0
    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->paramTypesNode:Lbsh/BSHFormalParameters;

    iget-object v1, p0, Lbsh/DelayedEvalBshMethod;->callstack:Lbsh/CallStack;

    iget-object v2, p0, Lbsh/DelayedEvalBshMethod;->interpreter:Lbsh/Interpreter;

    invoke-virtual {v0, v1, v2}, Lbsh/BSHFormalParameters;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    check-cast v0, [Ljava/lang/Class;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lbsh/EvalError;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t eval param types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 4

    .line 78
    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->returnTypeNode:Lbsh/BSHReturnType;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    :try_start_0
    iget-object v1, p0, Lbsh/DelayedEvalBshMethod;->callstack:Lbsh/CallStack;

    iget-object v2, p0, Lbsh/DelayedEvalBshMethod;->interpreter:Lbsh/Interpreter;

    invoke-virtual {v0, v1, v2}, Lbsh/BSHReturnType;->evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lbsh/EvalError;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t eval return type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReturnTypeDescriptor()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->returnTypeDescriptor:Ljava/lang/String;

    return-object v0
.end method
