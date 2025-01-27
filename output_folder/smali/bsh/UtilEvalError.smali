.class public Lbsh/UtilEvalError;
.super Ljava/lang/Exception;
.source "UtilEvalError.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;
    .locals 1
    .param p1, "node"    # Lbsh/SimpleNode;
    .param p2, "callstack"    # Lbsh/CallStack;

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    return-object v0
.end method

.method public toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "node"    # Lbsh/SimpleNode;
    .param p3, "callstack"    # Lbsh/CallStack;

    .line 72
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lbsh/UtilEvalError;->printStackTrace()V

    .line 75
    :cond_0
    if-nez p1, :cond_1

    .line 76
    const-string p1, ""

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    :goto_0
    new-instance v0, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    return-object v0
.end method
