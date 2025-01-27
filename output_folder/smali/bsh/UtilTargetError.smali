.class public Lbsh/UtilTargetError;
.super Lbsh/UtilEvalError;
.source "UtilTargetError.java"


# instance fields
.field public t:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 45
    invoke-direct {p0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p2, p0, Lbsh/UtilTargetError;->t:Ljava/lang/Throwable;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lbsh/UtilTargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method


# virtual methods
.method public toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "node"    # Lbsh/SimpleNode;
    .param p3, "callstack"    # Lbsh/CallStack;

    .line 59
    if-nez p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lbsh/UtilTargetError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/UtilTargetError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    :goto_0
    new-instance v6, Lbsh/TargetError;

    iget-object v2, p0, Lbsh/UtilTargetError;->t:Ljava/lang/Throwable;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    return-object v6
.end method
