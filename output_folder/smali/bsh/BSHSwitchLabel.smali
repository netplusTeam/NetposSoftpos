.class Lbsh/BSHSwitchLabel;
.super Lbsh/SimpleNode;
.source "BSHSwitchLabel.java"


# instance fields
.field isDefault:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 33
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 2
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 38
    iget-boolean v0, p0, Lbsh/BSHSwitchLabel;->isDefault:Z

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHSwitchLabel;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    .line 41
    .local v0, "label":Lbsh/SimpleNode;
    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
