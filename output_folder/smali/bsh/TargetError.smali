.class public Lbsh/TargetError;
.super Lbsh/EvalError;
.source "TargetError.java"


# instance fields
.field inNativeCode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "node"    # Lbsh/SimpleNode;
    .param p4, "callstack"    # Lbsh/CallStack;
    .param p5, "inNativeCode"    # Z

    .line 54
    invoke-direct {p0, p1, p3, p4}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    .line 55
    invoke-virtual {p0, p2}, Lbsh/TargetError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    iput-boolean p5, p0, Lbsh/TargetError;->inNativeCode:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "node"    # Lbsh/SimpleNode;
    .param p3, "callstack"    # Lbsh/CallStack;

    .line 61
    const-string v1, "TargetError"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Throwable;
    .locals 2

    .line 67
    invoke-virtual {p0}, Lbsh/TargetError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 68
    .local v0, "target":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    .line 69
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 71
    :cond_0
    return-object v0
.end method

.method public inNativeCode()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lbsh/TargetError;->inNativeCode:Z

    return v0
.end method

.method public printStackTrace()V
    .locals 2

    .line 82
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    .line 83
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    .line 87
    return-void
.end method

.method public printStackTrace(ZLjava/io/PrintStream;)V
    .locals 1
    .param p1, "debug"    # Z
    .param p2, "out"    # Ljava/io/PrintStream;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-super {p0, p2}, Lbsh/EvalError;->printStackTrace(Ljava/io/PrintStream;)V

    .line 92
    const-string v0, "--- Target Stack Trace ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lbsh/TargetError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 95
    return-void
.end method

.method public printTargetError(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 104
    invoke-virtual {p0}, Lbsh/TargetError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "s":Ljava/lang/String;
    invoke-static {}, Lbsh/Capabilities;->canGenerateInterfaces()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lbsh/TargetError;->xPrintTargetError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nTarget exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lbsh/TargetError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbsh/TargetError;->printTargetError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xPrintTargetError(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 123
    const-string v0, "import java.lang.reflect.UndeclaredThrowableException;String result=\"\";while ( target instanceof UndeclaredThrowableException ) {\ttarget=target.getUndeclaredThrowable(); \tresult+=\"Nested: \"+target.toString();}return result;"

    .line 131
    .local v0, "getTarget":Ljava/lang/String;
    new-instance v1, Lbsh/Interpreter;

    invoke-direct {v1}, Lbsh/Interpreter;-><init>()V

    .line 133
    .local v1, "i":Lbsh/Interpreter;
    :try_start_0
    const-string/jumbo v2, "target"

    invoke-virtual {v1, v2, p1}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v1, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Lbsh/EvalError;
    new-instance v3, Lbsh/InterpreterError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xprintarget: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v3
.end method
