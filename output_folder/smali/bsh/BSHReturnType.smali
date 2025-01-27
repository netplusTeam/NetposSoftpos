.class Lbsh/BSHReturnType;
.super Lbsh/SimpleNode;
.source "BSHReturnType.java"


# instance fields
.field public isVoid:Z


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 35
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .locals 1
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 54
    iget-boolean v0, p0, Lbsh/BSHReturnType;->isVoid:Z

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lbsh/BSHReturnType;->getTypeNode()Lbsh/BSHType;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "defaultPackage"    # Ljava/lang/String;

    .line 44
    iget-boolean v0, p0, Lbsh/BSHReturnType;->isVoid:Z

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "V"

    return-object v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lbsh/BSHReturnType;->getTypeNode()Lbsh/BSHType;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHType;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTypeNode()Lbsh/BSHType;
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHReturnType;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    return-object v0
.end method
