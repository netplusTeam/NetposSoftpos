.class public Lbsh/util/BeanShellBSFEngine;
.super Lorg/apache/bsf/util/BSFEngineImpl;
.source "BeanShellBSFEngine.java"


# static fields
.field static final bsfApplyMethod:Ljava/lang/String; = "_bsfApply( _bsfNames, _bsfArgs, _bsfText ) {for(i=0;i<_bsfNames.length;i++)this.namespace.setVariable(_bsfNames[i], _bsfArgs[i],false);return this.interpreter.eval(_bsfText, this.namespace);}"


# instance fields
.field installedApplyMethod:Z

.field interpreter:Lbsh/Interpreter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/bsf/util/BSFEngineImpl;-><init>()V

    return-void
.end method

.method private sourceInfo(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "lineNo"    # I
    .param p3, "columnNo"    # I

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " BSF info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column: columnNo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/String;IILjava/lang/Object;Ljava/util/Vector;Ljava/util/Vector;)Ljava/lang/Object;
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "lineNo"    # I
    .param p3, "columnNo"    # I
    .param p4, "funcBody"    # Ljava/lang/Object;
    .param p5, "namesVec"    # Ljava/util/Vector;
    .param p6, "argsVec"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    .line 135
    invoke-virtual {p5}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p6}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 137
    instance-of v0, p4, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 141
    .local v0, "names":[Ljava/lang/String;
    invoke-virtual {p5, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p6}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 143
    .local v1, "args":[Ljava/lang/Object;
    invoke-virtual {p6, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 147
    :try_start_0
    iget-boolean v2, p0, Lbsh/util/BeanShellBSFEngine;->installedApplyMethod:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 149
    iget-object v2, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    const-string v4, "_bsfApply( _bsfNames, _bsfArgs, _bsfText ) {for(i=0;i<_bsfNames.length;i++)this.namespace.setVariable(_bsfNames[i], _bsfArgs[i],false);return this.interpreter.eval(_bsfText, this.namespace);}"

    invoke-virtual {v2, v4}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    iput-boolean v3, p0, Lbsh/util/BeanShellBSFEngine;->installedApplyMethod:Z

    .line 153
    :cond_0
    iget-object v2, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    const-string v4, "global"

    invoke-virtual {v2, v4}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsh/This;

    .line 154
    .local v2, "global":Lbsh/This;
    const-string v4, "_bsfApply"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v1, v5, v3

    const/4 v3, 0x2

    move-object v6, p4

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 156
    .local v3, "value":Ljava/lang/Object;
    invoke-static {v3}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Lbsh/InterpreterError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 169
    .end local v2    # "global":Lbsh/This;
    .end local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e3":Lbsh/EvalError;
    new-instance v3, Lorg/apache/bsf/BSFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BeanShell script error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    .end local v2    # "e3":Lbsh/EvalError;
    :catch_1
    move-exception v2

    .line 165
    .local v2, "e2":Lbsh/TargetError;
    new-instance v3, Lorg/apache/bsf/BSFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The application script threw an exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 167
    invoke-virtual {v2}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    .end local v2    # "e2":Lbsh/TargetError;
    :catch_2
    move-exception v2

    .line 160
    .local v2, "e":Lbsh/InterpreterError;
    new-instance v3, Lorg/apache/bsf/BSFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BeanShell interpreter internal error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    .end local v0    # "names":[Ljava/lang/String;
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v2    # "e":Lbsh/InterpreterError;
    :cond_1
    new-instance v0, Lorg/apache/bsf/BSFException;

    const-string v1, "apply: functino body must be a string"

    invoke-direct {v0, v1}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_2
    new-instance v0, Lorg/apache/bsf/BSFException;

    const-string v1, "number of params/names mismatch"

    invoke-direct {v0, v1}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    .line 76
    if-nez p1, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    const-string v1, "global"

    invoke-virtual {v0, v1}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lbsh/EvalError;
    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bsh internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v0    # "e":Lbsh/EvalError;
    :cond_0
    :goto_0
    instance-of v0, p1, Lbsh/This;

    if-eqz v0, :cond_1

    .line 86
    :try_start_1
    move-object v0, p1

    check-cast v0, Lbsh/This;

    invoke-virtual {v0, p2, p3}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "value":Ljava/lang/Object;
    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lbsh/InterpreterError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lbsh/TargetError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lbsh/EvalError; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 97
    .end local v0    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e3":Lbsh/EvalError;
    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeanShell script error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .end local v0    # "e3":Lbsh/EvalError;
    :catch_2
    move-exception v0

    .line 94
    .local v0, "e2":Lbsh/TargetError;
    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The application script threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v0    # "e2":Lbsh/TargetError;
    :catch_3
    move-exception v0

    .line 90
    .local v0, "e":Lbsh/InterpreterError;
    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeanShell interpreter internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "e":Lbsh/InterpreterError;
    :cond_1
    new-instance v0, Lorg/apache/bsf/BSFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a BeanShell scripted object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declareBean(Lorg/apache/bsf/BSFDeclaredBean;)V
    .locals 4
    .param p1, "bean"    # Lorg/apache/bsf/BSFDeclaredBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    .line 243
    :try_start_0
    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    iget-object v1, p1, Lorg/apache/bsf/BSFDeclaredBean;->name:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/bsf/BSFDeclaredBean;->bean:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    nop

    .line 248
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Lbsh/EvalError;
    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error declaring bean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/bsf/BSFDeclaredBean;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public eval(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "lineNo"    # I
    .param p3, "columnNo"    # I
    .param p4, "expr"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    .line 181
    instance-of v0, p4, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    move-object v1, p4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbsh/InterpreterError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e3":Lbsh/EvalError;
    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeanShell script error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    .end local v0    # "e3":Lbsh/EvalError;
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e2":Lbsh/TargetError;
    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The application script threw an exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    .end local v0    # "e2":Lbsh/TargetError;
    :catch_2
    move-exception v0

    .line 188
    .local v0, "e":Lbsh/InterpreterError;
    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeanShell interpreter internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lbsh/util/BeanShellBSFEngine;->sourceInfo(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    .end local v0    # "e":Lbsh/InterpreterError;
    :cond_0
    new-instance v0, Lorg/apache/bsf/BSFException;

    const-string v1, "BeanShell expression must be a string"

    invoke-direct {v0, v1}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exec(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "lineNo"    # I
    .param p3, "columnNo"    # I
    .param p4, "script"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0, p1, p2, p3, p4}, Lbsh/util/BeanShellBSFEngine;->eval(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public initialize(Lorg/apache/bsf/BSFManager;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 4
    .param p1, "mgr"    # Lorg/apache/bsf/BSFManager;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "declaredBeans"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    .line 41
    invoke-super {p0, p1, p2, p3}, Lorg/apache/bsf/util/BSFEngineImpl;->initialize(Lorg/apache/bsf/BSFManager;Ljava/lang/String;Ljava/util/Vector;)V

    .line 43
    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0}, Lbsh/Interpreter;-><init>()V

    iput-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    .line 47
    :try_start_0
    const-string v1, "bsf"

    invoke-virtual {v0, v1, p1}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    nop

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 54
    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/bsf/BSFDeclaredBean;

    .line 55
    .local v1, "bean":Lorg/apache/bsf/BSFDeclaredBean;
    invoke-virtual {p0, v1}, Lbsh/util/BeanShellBSFEngine;->declareBean(Lorg/apache/bsf/BSFDeclaredBean;)V

    .line 52
    .end local v1    # "bean":Lorg/apache/bsf/BSFDeclaredBean;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lbsh/EvalError;
    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bsh internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 61
    sput-boolean p1, Lbsh/Interpreter;->DEBUG:Z

    .line 62
    return-void
.end method

.method public terminate()V
    .locals 0

    .line 260
    return-void
.end method

.method public undeclareBean(Lorg/apache/bsf/BSFDeclaredBean;)V
    .locals 4
    .param p1, "bean"    # Lorg/apache/bsf/BSFDeclaredBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/bsf/BSFException;
        }
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lbsh/util/BeanShellBSFEngine;->interpreter:Lbsh/Interpreter;

    iget-object v1, p1, Lorg/apache/bsf/BSFDeclaredBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbsh/Interpreter;->unset(Ljava/lang/String;)V
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    nop

    .line 258
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Lbsh/EvalError;
    new-instance v1, Lorg/apache/bsf/BSFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bsh internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/bsf/BSFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
