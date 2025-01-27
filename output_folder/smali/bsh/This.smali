.class public Lbsh/This;
.super Ljava/lang/Object;
.source "This.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# instance fields
.field transient declaringInterpreter:Lbsh/Interpreter;

.field namespace:Lbsh/NameSpace;


# direct methods
.method protected constructor <init>(Lbsh/NameSpace;Lbsh/Interpreter;)V
    .locals 0
    .param p1, "namespace"    # Lbsh/NameSpace;
    .param p2, "declaringInterpreter"    # Lbsh/Interpreter;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lbsh/This;->namespace:Lbsh/NameSpace;

    .line 133
    iput-object p2, p0, Lbsh/This;->declaringInterpreter:Lbsh/Interpreter;

    .line 135
    return-void
.end method

.method public static bind(Lbsh/This;Lbsh/NameSpace;Lbsh/Interpreter;)V
    .locals 1
    .param p0, "ths"    # Lbsh/This;
    .param p1, "namespace"    # Lbsh/NameSpace;
    .param p2, "declaringInterpreter"    # Lbsh/Interpreter;

    .line 306
    iget-object v0, p0, Lbsh/This;->namespace:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->setParent(Lbsh/NameSpace;)V

    .line 307
    iput-object p2, p0, Lbsh/This;->declaringInterpreter:Lbsh/Interpreter;

    .line 308
    return-void
.end method

.method static getThis(Lbsh/NameSpace;Lbsh/Interpreter;)Lbsh/This;
    .locals 4
    .param p0, "namespace"    # Lbsh/NameSpace;
    .param p1, "declaringInterpreter"    # Lbsh/Interpreter;

    .line 77
    :try_start_0
    invoke-static {}, Lbsh/Capabilities;->canGenerateInterfaces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "bsh.XThis"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;
    goto :goto_0

    .line 79
    .end local v0    # "c":Ljava/lang/Class;
    :cond_0
    invoke-static {}, Lbsh/Capabilities;->haveSwing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "bsh.JThis"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    .restart local v0    # "c":Ljava/lang/Class;
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lbsh/Reflect;->constructObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/This;

    return-object v1

    .line 82
    .end local v0    # "c":Ljava/lang/Class;
    :cond_1
    new-instance v0, Lbsh/This;

    invoke-direct {v0, p0, p1}, Lbsh/This;-><init>(Lbsh/NameSpace;Lbsh/Interpreter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal error 1 in This: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isExposedThisMethod(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 322
    nop

    .line 323
    const-string v0, "getClass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    const-string v0, "invokeMethod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    const-string v0, "getInterface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    const-string/jumbo v0, "wait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    const-string v0, "notify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    const-string v0, "notifyAll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "clas"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-object p0

    .line 106
    :cond_0
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dynamic proxy mechanism not available. Cannot construct interface type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInterface([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "ca"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 118
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dynamic proxy mechanism not available. Cannot construct interface type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public getNameSpace()Lbsh/NameSpace;
    .locals 1

    .line 138
    iget-object v0, p0, Lbsh/This;->namespace:Lbsh/NameSpace;

    return-object v0
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 167
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    .locals 9
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "interpreter"    # Lbsh/Interpreter;
    .param p4, "callstack"    # Lbsh/CallStack;
    .param p5, "callerInfo"    # Lbsh/SimpleNode;
    .param p6, "declaredOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 222
    new-array p2, v0, [Ljava/lang/Object;

    goto :goto_2

    .line 224
    :cond_0
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/Object;

    .line 225
    .local v1, "oa":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 226
    aget-object v3, p2, v2

    if-nez v3, :cond_1

    sget-object v3, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    goto :goto_1

    :cond_1
    aget-object v3, p2, v2

    :goto_1
    aput-object v3, v1, v2

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "i":I
    :cond_2
    move-object p2, v1

    .line 231
    .end local v1    # "oa":[Ljava/lang/Object;
    :goto_2
    if-nez p3, :cond_3

    .line 232
    iget-object p3, p0, Lbsh/This;->declaringInterpreter:Lbsh/Interpreter;

    .line 233
    :cond_3
    if-nez p4, :cond_4

    .line 234
    new-instance v1, Lbsh/CallStack;

    iget-object v2, p0, Lbsh/This;->namespace:Lbsh/NameSpace;

    invoke-direct {v1, v2}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    move-object p4, v1

    .line 235
    :cond_4
    if-nez p5, :cond_5

    .line 236
    sget-object p5, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    .line 239
    :cond_5
    invoke-static {p2}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    .line 240
    .local v1, "types":[Ljava/lang/Class;
    const/4 v2, 0x0

    .line 242
    .local v2, "bshMethod":Lbsh/BshMethod;
    :try_start_0
    iget-object v3, p0, Lbsh/This;->namespace:Lbsh/NameSpace;

    invoke-virtual {v3, p1, v1, p6}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;

    move-result-object v3
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 245
    goto :goto_3

    .line 243
    :catch_0
    move-exception v3

    .line 247
    :goto_3
    if-eqz v2, :cond_6

    .line 248
    invoke-virtual {v2, p2, p3, p4, p5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 260
    :cond_6
    const-string/jumbo v3, "toString"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 261
    invoke-virtual {p0}, Lbsh/This;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 264
    :cond_7
    const-string v3, "hashCode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 265
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 268
    :cond_8
    const-string v3, "equals"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 269
    aget-object v0, p2, v0

    .line 270
    .local v0, "obj":Ljava/lang/Object;
    if-ne p0, v0, :cond_9

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v3

    .line 277
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_a
    const/4 v3, 0x2

    const/4 v4, 0x1

    :try_start_1
    iget-object v5, p0, Lbsh/This;->namespace:Lbsh/NameSpace;

    const-string v6, "invoke"

    new-array v7, v3, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v8, v7, v0

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v5
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v5

    goto :goto_5

    .line 279
    :catch_1
    move-exception v5

    :goto_5
    nop

    .line 282
    if-eqz v2, :cond_b

    .line 283
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3, p3, p4, p5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 286
    :cond_b
    new-instance v0, Lbsh/EvalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 287
    invoke-static {p1, v1}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in bsh scripted object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsh/This;->namespace:Lbsh/NameSpace;

    .line 288
    invoke-virtual {v4}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p5, p4}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0
.end method

.method public run()V
    .locals 4

    .line 147
    :try_start_0
    const-string/jumbo v0, "run"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lbsh/EvalError;
    iget-object v1, p0, Lbsh/This;->declaringInterpreter:Lbsh/Interpreter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in runnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    .line 152
    .end local v0    # "e":Lbsh/EvalError;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'this\' reference to Bsh object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/This;->namespace:Lbsh/NameSpace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
